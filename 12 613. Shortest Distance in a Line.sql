-- Write your MySQL query statement below


SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point p1 
CROSS JOIN Point p2
WHERE p1.x <> p2.x;

-- Optimised and for values arranged in ascending order 
SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point p1 
INNER JOIN Point p2
WHERE p1.x < p2.x;