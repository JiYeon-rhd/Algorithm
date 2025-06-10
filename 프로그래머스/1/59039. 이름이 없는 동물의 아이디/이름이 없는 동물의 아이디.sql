-- 코드를 입력하세요
-- 이름이 없는 채로 들어온 동물
-- id 오름차순
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME is null
ORDER BY ANIMAL_ID ASC