#
# R version 4.2.2
# 0001multiples_of_3_or_5.R
# 
# Copyright 2025 @GitHub JoergEm
# 
# This program is WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

num <- 1:999

sum_of_multiples <- sum(num[num %% 3 == 0 | num %% 5 == 0])

print(sum_of_multiples)