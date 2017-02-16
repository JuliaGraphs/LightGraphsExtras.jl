"""
max_weight_matching{T <:Real}(g::Graph, w::Dict{Edge,T} = Dict{Edge,Int64}())

Given a graph `g` and an edgemap `w` containing weights associated to edges,
returns a matching with the maximum total weight.
`w` is a dictionnary that maps edges i => j (with i <= j) to weights.
If no weight parameter is given,
all edges will be considered to have weight 1 (results in max cardinality matching)


The efficiency of the algorithm depends on the input graph:
  - If the graph is bipartite, then the LP relaxation is guaranteed to be integral.
  - If the graph is not bipartite, then the computation time may grow exponentially.

The package JuMP.jl and one of its supported solvers is required.

Returns MatchingResult containing:
  - a solve status (indicating whether the problem was solved to optimality)
  - the optimal cost
  - a list of each node's match.
"""
function max_weight_matching end

function max_weight_matching{T <:Real}(g::Graph,
          w::Dict{Edge,T} = Dict{Edge,Int64}(i => 1 for i in edge_list))

    model = Model()
    n = nv(g)
    edge_list = collect(edges(g))

    if setdiff(edge_list, keys(w)) != [] # If some edges do not have a key in w.
      error("Some edge weights are missing, check that keys i => j in w satisfy i <= j")
    end

    @variable(model, x[edge_list] >= 0, Int) # Only creates variables for each edge, not each pair of nodes.
    @objective(model, Max, sum(x[Edge(i,j)]*w[Edge(i,j)] for (i,j) in edge_list))
    @constraint(model, c1[i=1:n],
                sum(x[Edge(i,j)] for j=filter(l -> l > i, neighbors(g,i))) +
                sum(x[Edge(j,i)] for j=filter(l -> l <= i, neighbors(g,i)))
                <= 1)
    status = solve(model)
    solution = getvalue(x)
    cost = getobjectivevalue(model)
    ## TODO: add the option of returning the solve status as part of the MatchingResult type.
    return MatchingResult(cost, dict_to_arr(n, solution))
end

""" Returns an array of mates from a dictionnary that maps edges to {0,1} """
function dict_to_arr{T<: Real}(n::Int64, solution::JuMP.JuMPArray{T,1,Tuple{Array{Edge,1}}})
  mate = fill(-1,n)
  for i in keys(solution)
    key = i[1] # i is a tuple with 1 element.
    if solution[key] >= 1 - 1e-5 # Some tolerance to numerical approximations by the solver.
        mate[src(key)] = dst(key)
        mate[dst(key)] = src(key)
    end
  end
  return mate
end
