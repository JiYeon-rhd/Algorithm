-- 코드를 입력하세요
-- 2022년 10월 16일에 대여중 -> 대여중으로 표시
-- 아니면 대여 가능
-- 반납일짜가 2022년 10월 16일인 경우에도 대여중
-- 그니까 한번이라도 대여 중이면 대여중인거임
SELECT CAR_ID, 
        CASE 
            WHEN sum(CASE 
                    WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE THEN 1
                    ELSE 0
                    END) > 0 then '대여중'
            ELSE '대여 가능'
        END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC
