module LightGraphsExtras

using LightGraphs

export Datasets
export Interdiction

include("datasets/datasets.jl")
include("interdiction/interdiction.jl")

end # module
