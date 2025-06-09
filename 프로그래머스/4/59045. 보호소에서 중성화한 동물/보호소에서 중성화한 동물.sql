-- 코드를 입력하세요
-- 들어올때 intact
-- 나갈때 not intact, Spayed Nevtered

SELECT i.ANIMAL_ID, i.ANIMAL_TYPE, i.NAME
FROM ANIMAL_INS as i join ANIMAL_OUTS as o on i.ANIMAL_ID = o.ANIMAL_ID
WHERE i.SEX_UPON_INTAKE like ('Intact%') 
    and (o.SEX_UPON_OUTCOME like ('Neutered%') 
    or o.SEX_UPON_OUTCOME like ('Spayed%'))
ORDER BY i.ANIMAL_ID;