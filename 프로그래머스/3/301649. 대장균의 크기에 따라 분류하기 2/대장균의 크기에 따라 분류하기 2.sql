WITH quartile as (
SELECT *,
percent_rank() over(order by SIZE_OF_COLONY desc) as pct
FROM ECOLI_DATA)

SELECT ID,
(CASE WHEN pct >= 0 AND pct <= 0.25 THEN 'CRITICAL'
WHEN pct > 0.25 AND pct <= 0.5 THEN 'HIGH'
WHEN pct > 0.5 AND pct <= 0.75 THEN 'MEDIUM'
ELSE 'LOW' END) as COLONY_NAME
FROM quartile
ORDER BY ID;