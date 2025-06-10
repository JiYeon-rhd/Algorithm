-- 코드를 입력하세요
-- 2022년 5월 1일 을 기준으로 출고 여부 조회
-- 1일까지 출고 완료, 이후는 출고 대기, null 출고 미정
-- 주문 ID 오름차순

SELECT ORDER_ID, PRODUCT_ID, 
        DATE_FORMAT(OUT_DATE, '%Y-%m-%d') as OUT_DATE,
        (CASE
            WHEN OUT_DATE is null THEN '출고미정'
            WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') <= '2022-05-01' THEN '출고완료'
            ELSE '출고대기'
         END
        ) as '출고여부'
FROM FOOD_ORDER
ORDER BY 1 ASC