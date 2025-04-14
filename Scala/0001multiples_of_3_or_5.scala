
/**
 * scala 3.5.2
 * 0001multiples_of_3_or_5.scala
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */


def main(args: Array[String]): Unit = {
  val sum = (1 until 1000)
    .filter(num => num % 3 == 0 || num % 5 == 0)
    .sum

    println(sum)
}