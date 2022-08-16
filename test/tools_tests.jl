using HistDist
using Test

@testset "significance" begin
@test significance([1,1,1],[1,1,1]) == 0
end
