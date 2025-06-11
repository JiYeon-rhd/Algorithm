-- 코드를 입력하세요
-- 성별 널처리 주의, 날짜 주의 
-- 2021년 가입한 회원, 나이 20 이상 29이하인 사람 몇명
SELECT count(*) as USERS
FROM USER_INFO
WHERE YEAR(JOINED) = '2021'
    and AGE BETWEEN 20 AND 29
