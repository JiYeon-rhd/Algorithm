-- 코드를 입력하세요
-- 나이가 null인 회원이 몇명

SELECT count(*) as USERS
FROM USER_INFO
WHERE AGE is null
