-- Write your MySQL query statement below
-- Triangle is possible only if 
-- the sum of 2 sides is always greater tah the 3rd side
-- x + y > z (and) y + z > x (and) x + z > y

SELECT *, CASE WHEN x + y > z  AND y + z > x AND x + z > y THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle;