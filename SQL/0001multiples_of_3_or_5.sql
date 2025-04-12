/* 
 * mysql Ver 15.1
 * 0001multiples_of_3_or_5.sql
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */


WITH RECURSIVE Numbers AS (
    SELECT 1 AS a
    UNION ALL
    SELECT a + 1
    FROM Numbers
    WHERE CAST(a AS UNSIGNED) < 999
)
SELECT SUM(a) AS sum_of_multiples
FROM Numbers
WHERE a % 3 = 0 OR a % 5 = 0;