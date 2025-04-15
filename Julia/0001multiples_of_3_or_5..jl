#=
julia version 1.11.4
0001multiples_of_3_or_5.jl
Copyright 2025 @GitHub JoergEm

This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
=#

function sum_of_multiples(limit::Int)
	return sum([num for num in 1:limit if num%3==0||num%5==0])
end

sum_of_multiples = summe(999)
println(sum_of_multiples)