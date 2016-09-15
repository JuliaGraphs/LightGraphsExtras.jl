module LightGraphsExtras

export Matching
export CombinatorialAdjacencies
export Datasets
export Community
export Interdiction

include("matching/matching.jl")
include("spectral/spectral.jl")
include("datasets/datasets.jl")
include("community/detection.jl")
include("interdiction/interdiction.jl")

end # module
