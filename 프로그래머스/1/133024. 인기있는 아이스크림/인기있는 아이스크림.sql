-- 코드를 입력하세요
-- 아이스크림 맛의 총주문량
-- 총주문량 내림차순, 출하번호 오름차순
SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC