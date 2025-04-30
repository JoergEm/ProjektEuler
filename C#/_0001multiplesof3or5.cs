/* 
 * .NET VERSION
 * _0001multiplesof3or5.cs
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */
using System;

class _0001multiplesof3or5
{
	
    static void Main()
    {
		int summe = 0;
        for (int nummer = 0; nummer < 1000; nummer++) {
            if (nummer % 3 == 0 || nummer % 5 == 0) {
                summe += nummer;
            }
        }
        Console.WriteLine(summe);
	}
}