--  Write your MySQL query statement below

-- SELECT C.name AS Customers 
-- FROM Customers C
-- LEFT JOIN Orders O
-- ON C.id = O.customerID
-- WHERE O.id IS NULL;

SELECT C.name AS Customers
FROM Customers C
WHERE C.id NOT IN
(SELECT C.id
FROM Customers C
INNER JOIN Orders O
On C.id = O.CustomerId);