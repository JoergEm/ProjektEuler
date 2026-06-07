/*
 * 0002even_fibonacci_numbers.sql
 * 
 * Copyright 2026 Jörg Mekka
 * @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * 
 */

WITH RECURSIVE Fibonacci AS (
	SELECT 0 AS a, 1 AS b
	UNION ALL
	SELECT b, a + b FROM Fibonacci WHERE b <= 4000000
)

SELECT SUM(a) AS Summe
FROM Fibonacci
WHERE a % 2 = 0;