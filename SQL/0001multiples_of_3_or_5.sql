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


WITH RECURSIVE num AS (
    SELECT 1 AS nummer
    UNION ALL
    SELECT nummer + 1
    FROM num
    WHERE CAST(a AS UNSIGNED) < 999
)
SELECT SUM(a) AS summe
FROM num
WHERE nummer % 3 = 0 OR nummer % 5 = 0;