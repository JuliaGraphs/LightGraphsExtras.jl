include("../src/LightGraphsExtras.jl")
using LightGraphs
using LightGraphsExtras
using LightGraphsExtras.Matching
using LightGraphsExtras.Datasets
using LightGraphsExtras.Community
using LightGraphsExtras.Interdiction
using Base.Test

testdir = dirname(@__FILE__)

tests = [
    "matching/runtests",
    "spectral/runtests",
    "datasets/runtests",
    "community/detection",
    "interdiction/runtests"
]

for t in tests
    tp = joinpath(testdir,"$(t).jl")
    println("running $(tp) ...")
    include(tp)
end
