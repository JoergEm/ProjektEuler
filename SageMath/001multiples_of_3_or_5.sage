#
# SageMath version 10.6, Release Date: 2025-03-31
# 0001multiples_of_3_or_5.sage
# 
# Copyright 2025 @GitHub JoergEm
# 
# This program is WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

summe = sum(nummer for nummer in range(1, 1000) if nummer % 3 == 0 or nummer % 5 == 0)
pretty_print(summe)