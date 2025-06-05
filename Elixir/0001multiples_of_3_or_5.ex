~S"""
# Elixir 1.9.4. 
# 0001multiples_of_3_or_5.ex
# Copyright 2025 @GitHub JoergEm
# This program is WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
"""


defmodule Multiples do
  def multiples_of_3_or_5(m, limit) do
    nummer = div(limit - 1, m)
    div(m * nummer * (nummer + 1), 2)
  end

  def main(_) do
    summe = multiples_of_3_or_5(3, 1000) + multiples_of_3_or_5(5, 1000) - multiples_of_3_or_5(15, 1000)
    IO.puts("Die Summe ist: #{summe}")
  end
end

Multiples.main(nil)