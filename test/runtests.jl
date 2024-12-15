using NumericalMethodsLib
using Test

@testset "NumericalMethodsLib.jl" begin
    x_vec = 0:0.01:2*pi
    fx_vec = sin.(x_vec) + 3*cos.(0.01*x_vec)
    an_vec, bn_vec, n_vec = FS_analysis(fx_vec, x_vec; N=50)
    f_FS = FS_synthesis(an_vec, bn_vec, (x_vec[end] - x_vec[1]))
    @test isapprox(f_FS.(x_vec), fx_vec, atol=0.01)

end
