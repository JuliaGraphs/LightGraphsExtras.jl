__precompile__(true)
module Spectral

using LightGraphs
using GraphMatrices

export CombinatorialAdjacency

# GraphMatrices integration
# CombinatorialAdjacency(g) returns a type that supports iterative linear solvers and eigenvector solvers.
function CombinatorialAdjacency(g::Graph)
    d = float(indegree(g))
    return GraphMatrices.CombinatorialAdjacency{Float64, typeof(g), typeof(d)}(g,d)
end


end #module
