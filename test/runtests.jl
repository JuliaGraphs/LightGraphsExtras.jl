using LightGraphs
using LightGraphsExtras
using LightGraphsExtras.Datasets
using LightGraphsExtras.Interdiction
using Test

testdir = dirname(@__FILE__)

tests = [
    "datasets",
    "interdiction"
]

@testset "LightGraphsExtras" begin
    for t in tests
            tp = joinpath(testdir, t, "runtests.jl")
            println("running $(tp) ...")
            include(tp)
    end
end
