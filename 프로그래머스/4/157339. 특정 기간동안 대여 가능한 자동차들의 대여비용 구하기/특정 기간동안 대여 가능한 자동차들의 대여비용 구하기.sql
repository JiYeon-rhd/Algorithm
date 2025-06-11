-- 코드를 입력하세요
-- 자동차 세단, SUV
-- 2022년 11월 1일부터 22년 11월 30일 대여 가능 -> 필터링
-- 30일간 대여 금액 50만원 이상 200만원 미만
-- 자동자 아이디, 종류, 대여 금액 출력
-- 대여 금액 내림차순, 종류 오름차순, 아이디 내림차순 


SELECT r.CAR_ID, r.CAR_TYPE, FLOOR(r.DAILY_FEE * 30 * (1 - p.DISCOUNT_RATE/100)) as FEE
FROM CAR_RENTAL_COMPANY_CAR as r 
        left join (SELECT CAR_TYPE, DISCOUNT_RATE 
            FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
             WHERE DURATION_TYPE = '30일 이상'
                  and CAR_TYPE in ('세단', 'SUV')
            ) as p
        on r.CAR_TYPE = p.CAR_TYPE
WHERE r.CAR_TYPE in ('세단', 'SUV')
        and CAR_ID not in (
                SELECT CAR_ID
                FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                WHERE NOT(DATE_FORMAT(START_DATE, '%Y-%m-%d') > '2022-11-30'
                        or DATE_FORMAT(END_DATE, '%Y-%m-%d') < '2022-11-01')
                    )
        and FLOOR(r.DAILY_FEE * 30 * (1 - p.DISCOUNT_RATE/100)) >= 500000
        and FLOOR(r.DAILY_FEE * 30 * (1 - p.DISCOUNT_RATE/100)) < 2000000
ORDER BY 3 DESC, 2 ASC, 1 DESC
