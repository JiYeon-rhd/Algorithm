-- 코드를 입력하세요
-- 평균 대여 기간이 7일 이상인 자동차 
-- 두번째 자시 반올림
-- 기간 내림차순, 아이디 내림차순
with RENTAL_DAY as (
    SELECT CAR_ID, DATEDIFF(END_DATE, START_DATE)+1 as DAY
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
)

SELECT CAR_ID, round(avg(DAY), 1) as AVERAGE_DURATION
FROM RENTAL_DAY
GROUP BY CAR_ID
HAVING round(avg(DAY), 1) >= 7
ORDER BY 2 DESC, 1 DESC