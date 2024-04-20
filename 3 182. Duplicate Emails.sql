# Write your MySQL query statement below
-- SELECT email
-- FROM Person
-- GROUP BY email
-- HAVING COUNT(DISTINCT id)>1;

-- If you see, if you COUNT(DISTINCT email), in the question a@b.com will be counted only once because you are counting distinct, right? So the query you mentioned will not return anything because COUNT(DISTINCT email) > 1 will not get satisfied.


SELECT DISTINCT P1.email as Email FROM Person P1, Person P2 WHERE P1.email = P2.email and P1.id != P2.id;
