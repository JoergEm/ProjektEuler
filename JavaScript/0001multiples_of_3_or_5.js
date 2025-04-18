/*
 * 0001multiples_of_3_or_5.js
 *
 * Copyright 2025 @GitHub JoergEm
 *
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *
 */
var sumOfMultiples = function (limit) {
    return Array.from({ length: limit }, function (_, index) { return index; })
        .filter(function (num) { return num % 3 === 0 || num % 5 === 0; })
        .reduce(function (acc, num) { return acc + num; }, 0);
};
var result = sumOfMultiples(1000);
console.log(result);