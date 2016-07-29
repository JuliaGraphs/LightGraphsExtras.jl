# include("../src/LightGraphs.jl")
using LightGraphs
using LightGraphsExtras
using LightGraphsExtras.Matching
using Base.Test

testdir = dirname(@__FILE__)

tests = [
    "matching/runtests",
    "spectral/runtests",
]


for t in tests
    tp = joinpath(testdir,"$(t).jl")
    println("running $(tp) ...")
    include(tp)
end
