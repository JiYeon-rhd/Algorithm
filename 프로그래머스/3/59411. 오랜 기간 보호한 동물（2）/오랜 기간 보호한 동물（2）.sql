-- 코드를 입력하세요
-- 입양을 간 동물 중, 보호기간이 가장 길었던 동물 두마리!!
-- 보호 기간이 긴 순으로 
SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_OUTS as o join (SELECT ANIMAL_ID, DATETIME FROM ANIMAL_INS) as i
        on o.ANIMAL_ID = i.ANIMAL_ID
ORDER BY (DATEDIFF(o.DATETIME, i.DATETIME) + 1)  DESC
limit 2