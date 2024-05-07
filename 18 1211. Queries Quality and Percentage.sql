-- Write your MySQL query statement below
-- quality = rating / position
-- poor query -> rating <3

WITH cte AS (SELECT query_name, rating/position AS ratio, CASE WHEN rating < 3 THEN 1  ELSE 0 END AS  quality_binary
FROM Queries)

SELECT query_name, ROUND(AVG(ratio),2) AS quality, ROUND((SUM(quality_binary)/COUNT(*))*100, 2) AS poor_query_percentage
FROM cte
WHERE query_name is not null
GROUP BY query_name;


-- SELECT Q.query_name, ROUND(AVG(rating/position),2) as quality, ROUND(AVG(if(rating<3,1,0))*100,2) as poor_query_percentage
-- FROM Queries Q
-- WHERE query_name IS NOT NULL
-- GROUP BY Q.query_name