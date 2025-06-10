
select b.HISTORY_ID, (DATEDIFF(b.end_date, b.start_date)+1)*(a.daily_fee - ifnull(floor(a.daily_fee * 
    (
        SELECT CAST(REPLACE(discount_rate, '%', '') AS UNSIGNED) as discount
        FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN c
        WHERE c.car_type = a.car_type
          AND DATEDIFF(b.end_date, b.start_date)+1 >= CAST(SUBSTRING_INDEX(c.duration_type, '일', 1) AS UNSIGNED)
        ORDER BY discount desc
        LIMIT 1
        ) *0.01)
    ,0) ) as FEE
from CAR_RENTAL_COMPANY_CAR a
    join CAR_RENTAL_COMPANY_RENTAL_HISTORY b 
    on a.car_id=b.car_id
where a.CAR_TYPE='트럭'
order by FEE desc, HISTORY_ID desc;