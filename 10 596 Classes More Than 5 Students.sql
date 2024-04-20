# Write your MySQL query statement below
WITH CTE AS
(
    SELECT class, COUNT(student) AS count_of_student
    FROM Courses
    GROUP BY class
)
SELECT class FROM CTE WHERE count_of_student >=5;

-- or

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >=5;