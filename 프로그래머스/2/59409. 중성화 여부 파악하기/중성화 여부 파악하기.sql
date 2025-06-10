-- 코드를 입력하세요
-- 중성화된 동물 N or S -> O  아니면 X
-- 아이디 순 

SELECT ANIMAL_ID, NAME, 
    (CASE 
        WHEN SEX_UPON_INTAKE like ('Neutered%') or SEX_UPON_INTAKE like ('Spayed%')
        THEN 'O'
        ELSE 'X'
     END
    ) as '중성화'
FROM ANIMAL_INS
ORDER BY 1