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
    "matching",
    "datasets",
    "community",
    "interdiction"
]

for t in tests
    tp = joinpath(testdir, t, "runtests.jl")
    println("running $(tp) ...")
    include(tp)
end
