-- 코드를 작성해주세요
-- route별로 
-- D_BETWEEN_DIST의 총합: 총 누계거리
-- 
SELECT ROUTE, 
        concat(round(sum(D_BETWEEN_DIST),1),'km') as TOTAL_DISTANCE,
       concat(round(avg(D_BETWEEN_DIST), 2),'km') as AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY sum(D_BETWEEN_DIST) DESC