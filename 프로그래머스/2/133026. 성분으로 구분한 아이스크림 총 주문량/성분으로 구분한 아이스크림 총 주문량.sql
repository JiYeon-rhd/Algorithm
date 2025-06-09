-- 코드를 입력하세요
-- 상반기 동안 각 성분 타입과 
-- 타입에 대한 아이스크림 총 주문량
-- 총 주문량이 작은 순서대로 
SELECT i.INGREDIENT_TYPE, sum(f.TOTAL_ORDER) as TOTAL_ORDER
FROM FIRST_HALF as f join ICECREAM_INFO as i on f.FLAVOR = i.FLAVOR
GROUP BY i.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER