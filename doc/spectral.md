# Spectral

##[GraphMatrices.jl](https://github.com/jpfairbanks/GraphMatrices.jl)
*LightGraphsExtras.jl* can interface directly with this spectral graph analysis
package:

```julia
julia> g = PathGraph(10)
{10, 9} undirected graph

julia> a = Spectral.CombinatorialAdjacency(g)
GraphMatrices.CombinatorialAdjacency{Float64,LightGraphs.Graph,Array{Float64,1}}({10, 9} undirected graph,[1.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,1.0])
```
