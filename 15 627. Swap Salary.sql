-- Write your MySQL query statement below

UPDATE Salary SET sex = CASE WHEN sex='f' THEN 'M' WHEN sex='m' THEN 'f' END;