/* 
 * openjdk 21.0.6 2025-01-21 LTS
 * 0001multiples_of_3_or_5.java
 * 
 *
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 */


public class _0001multiples_of_3_or_5 {

    public static void main (String[] args) {
        int summe = 0;
        for (int num = 0; num < 1000; num++) {
            if (num % 3 == 0 || num % 5 == 0) {
                summe += num;
            }
        }
        System.out.println(summe);	
    }
}