-- 코드를 작성해주세요
-- 파이썬 스킬 가진 개발자
-- 아이디 오름차순 

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = 'Python' or SKILL_2 = 'Python' or SKILL_3 = 'Python'
ORDER BY ID ASC