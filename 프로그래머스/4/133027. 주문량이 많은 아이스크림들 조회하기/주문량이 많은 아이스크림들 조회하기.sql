-- 코드를 입력하세요
SELECT sub.FLAVOR
FROM(
    SELECT f.FLAVOR, sum(f.TOTAL_ORDER) + sum(j.TOTAL_ORDER) as TOTAL_ORDER
    FROM FIRST_HALF as f join (SELECT FLAVOR, sum(TOTAL_ORDER) as TOTAL_ORDER
                            FROM JULY
                            GROUP BY FLAVOR) as j 
    on f.FLAVOR = j.FLAVOR
    GROUP BY f.FLAVOR
) as sub
ORDER BY sub.TOTAL_ORDER DESC
limit 3
