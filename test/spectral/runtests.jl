using Base.Test
using LightGraphs
using LightGraphsExtras.Spectral
using GraphMatrices

mat = PathGraph(10)
onevec = ones(Float64, 10)
adjmat = LightGraphsExtras.Spectral.CombinatorialAdjacency(mat)
@test eltype(mat) == Float64
@test zero(eltype(mat)) == 0.0
@test eltype(adjmat) == Float64
@test zero(eltype(adjmat)) == 0.0
@test sum(abs(adjmat*onevec)) != 0
# lapl = GraphMatrices.CombinatorialLaplacian(adjmat)
# @test_approx_eq_eps(eigs(lapl, which=:LR)[1][1], 3.902, 0.001)

