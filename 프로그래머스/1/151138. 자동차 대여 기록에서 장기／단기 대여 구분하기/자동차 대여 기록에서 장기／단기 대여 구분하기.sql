-- 코드를 입력하세요
-- 대여 시작일 2022년 9월인것중에
-- 대여 기간이 30일 이상이면 장기 아니면 단기인 컬럼 추가
SELECT HISTORY_ID, CAR_ID, 
    DATE_FORMAT(START_DATE, '%Y-%m-%d') as START_DATE,
    DATE_FORMAT(END_DATE, '%Y-%m-%d') as END_DATE,
        (CASE
            WHEN (DATEDIFF(END_DATE, START_DATE) + 1) >= 30 THEN '장기 대여'
            ELSE '단기 대여'
         END) as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATE_FORMAT(START_DATE, '%Y-%m-%d') BETWEEN '2022-09-01' and '2022-09-31'
ORDER BY 1 DESC