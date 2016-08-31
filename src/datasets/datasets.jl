__precompile__(true)
module Datasets

using ...LightGraphs
using MatrixDepot

# matrixdepot
export MDGraph, MDDiGraph

include("matrixdepot.jl")

end #module
