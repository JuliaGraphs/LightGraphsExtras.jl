tests = [
    "datasets/matrixdepot"
]


@testset "datasets" begin
    for t in tests
            tp = joinpath(testdir,"$(t).jl")
            println("running $(tp) ...")
            include(tp)
    end
end
