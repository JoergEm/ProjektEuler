/*
 + Node 23.10.0
 * 0001multiples_of_3_or_5.ts
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */

const multiples_of_3_or_5 = (limit: number): number => {
    return Array.from({ length: limit }, (_, index) => index)
        .filter(num => num % 3 === 0 || num % 5 === 0)
        .reduce((acc, num) => acc + num, 0);
};

const result: number = multiples_of_3_or_5(1000);
console.log(result);