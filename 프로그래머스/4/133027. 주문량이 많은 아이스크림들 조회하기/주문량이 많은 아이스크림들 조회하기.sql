-- 코드를 입력하세요
-- 7월 아이스크림 총 주문량과 상반기 아이스크림 총 주문량 더하기 
-- 값이 큰 순서대로 상위 3개 맛 출력

with TOTAL_JULY as (
    SELECT  FLAVOR, sum(TOTAL_ORDER) as JULY_TOTAL_ORDER
    FROM JULY
    GROUP BY FLAVOR
)

SELECT f.FLAVOR
FROM FIRST_HALF as f join TOTAL_JULY as j on f.FLAVOR = j.FLAVOR
ORDER BY (f.TOTAL_ORDER + j.JULY_TOTAL_ORDER) DESC
limit 3
