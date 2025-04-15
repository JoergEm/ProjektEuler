#=
julia version 1.11.4
0001multiples_of_3_or_5.jl
Copyright 2025 @GitHub JoergEm

This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
=#

function sum_of_multiples(limit::Int)
	return sum([i for i in 1:limit if i%3==0||i%5==0])
end

result = sum_of_multiples(999)
println(result)