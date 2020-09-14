1
SELECT COUNT(*) 
FROM Flights

2
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides 
FROM Flights
GROUP BY Origin;

3
SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth

4
SELECT B.City, A.colYear, A.colMonth, AVG(A.ArrDelay) AS prom_arribades
FROM Flights A, USAirports B
WHERE A.Origin = B.IATA
GROUP BY B.City, A.colYear, A.colMonth
ORDER BY B.City, A.colYear, A.colMonth

5
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled
FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth
HAVING total_cancelled > 0
ORDER BY total_cancelled DESC, UniqueCarrier, colYear, colMonth

6
SELECT TailNum, SUM(Distance) AS totalDistance
FROM Flights
WHERE TailNum <> ''
GROUP BY TailNum
ORDER BY totalDistance DESC
LIMIT 10

7
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM Flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC