-- 코드를 입력하세요
SELECT i.NAME, i.DATETIME
FROM ANIMAL_INS as i left join ANIMAL_OUTS as o on i.ANIMAL_ID = o.ANIMAL_ID
WHERE o.DATETIME is null
ORDER BY i.DATETIME
limit 3;
