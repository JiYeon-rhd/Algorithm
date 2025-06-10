-- 코드를 작성해주세요
-- 수원 지역
-- 연도별 평균 미세먼지 오염도, 평균 초미세먼지 오염도 
-- 소수 셋째짜리에서 반올림
-- 연도 오름차순
SELECT YEAR(YM) as YEAR, round(avg(PM_VAL1), 2) as 'PM10', round(avg(PM_VAL2), 2) as 'PM2.5'
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY 1 ASC