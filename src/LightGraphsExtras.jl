module LightGraphsExtras

export Matching
export CombinatorialAdjacencies
export Datasets
export Community

include("matching/matching.jl")
include("spectral/spectral.jl")
include("datasets/datasets.jl")
include("community/detection.jl")

end # module
