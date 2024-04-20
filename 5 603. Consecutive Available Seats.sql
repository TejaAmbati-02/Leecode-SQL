SELECT w.seat_id FROM
(SELECT *, LEAD(free) OVER (ORDER BY free ASC) AS NextSeat, LAG(free) OVER (ORDER BY free ASC) AS PreviousSeat
FROM Cinema) w
WHERE 
w.free = 1 AND w.NextSeat = 1
OR
w.free = 1 AND w.PreviousSeat = 1
ORDER BY seat_id;