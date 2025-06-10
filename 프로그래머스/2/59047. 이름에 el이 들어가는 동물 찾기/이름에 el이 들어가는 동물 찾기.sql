-- 코드를 입력하세요
-- 이름에 el들어감
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME like('%el%') and ANIMAL_TYPE = 'Dog'
ORDER BY 2 ASC