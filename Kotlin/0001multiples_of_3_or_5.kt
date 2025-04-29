/*
 * ProjectEuler.kt
 *
 * Copyright 2025 @GitHub JoergEm
 *
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *
 */

 fun main() {
	 val summe = (1..999).filter{it%3 == 0||it%5 ==0}.sum()
	 println(summe)
 }
