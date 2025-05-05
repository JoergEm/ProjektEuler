#=
julia version 1.11.4
0001multiples_of_3_or_5.jl
Copyright 2025 @GitHub JoergEm

This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
=#

function summe()
	return sum([nummer for nummer in 1:999 if nummer%3 == 0 || nummer%5 == 0])
end

println(summe())