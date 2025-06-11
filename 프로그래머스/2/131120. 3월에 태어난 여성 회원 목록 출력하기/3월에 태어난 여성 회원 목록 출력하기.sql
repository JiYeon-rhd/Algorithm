-- 코드를 입력하세요
-- 생일 3월, 여성
-- 전화번호 널 제외
-- 회원 아이디 오름차순
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = '3'
    and GENDER = 'W'
    and TLNO is not null
ORDER BY MEMBER_ID ASC
