/* 
 * gcc 12.2.0
 * 0001multiples_of_3_or_5.c
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */


#include <stdio.h>

int main() {
    int summe = 0;

    for (int nummer = 1; nummer < 1000; nummer++) {
        if (nummer % 3 == 0 || nummer % 5 == 0) {
            summe += nummer;
        }
    }

    printf("%d\n", summe);
    return 0;
}