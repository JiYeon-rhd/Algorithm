-- 코드를 입력하세요
-- 자동차 종류 세단
-- 10월에 대여 시작한 기록 있는 자동차
-- 자동차 id 중복 업이
-- 자동차 id 내림차순
SELECT DISTINCT h.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR as r join CAR_RENTAL_COMPANY_RENTAL_HISTORY as h
    on r.CAR_ID = h.CAR_ID
WHERE r.CAR_TYPE = '세단'
    and DATE_FORMAT(h.START_DATE, '%Y-%m') = '2022-10'
ORDER BY 1 DESC
