SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance I1
WHERE NOT EXISTS (
    SELECT 1 FROM Insurance I2
    WHERE I1.lat = I2.lat AND I1.lon = I2.lon AND I1.pid != I2.pid
)
AND EXISTS (
    SELECT 1 FROM Insurance I3
    WHERE I1.tiv_2015 = I3.tiv_2015 AND I1.pid != I3.pid
);

