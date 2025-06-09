-- 코드를 입력하세요
-- 2021년 가입한 회원들 중
-- 상품을 구매한 회원수 회원의 비율 (2021년 가입 and 상품구매한 회원수 / 2021 가입한 전체 회원수) -> 소수점 두번째에서 반올림
-- 년, 월별로 출력
-- 년 오름차순, 월 오름차순



-- 2021년 가입한 회원 구하기
with JOINED_2021 as (
    SELECT USER_ID
    FROM USER_INFO
    WHERE JOINED like ('2021%')
    )
SELECT DATE_FORMAT(s.SALES_DATE, '%Y') as YEAR, 
        FLOOR(DATE_FORMAT(s.SALES_DATE, '%m')) as MONTH,
        count(DISTINCT s.USER_ID) as PURCHASED_USERS,
        round(count(DISTINCT s.USER_ID) / (SELECT count(*) FROM JOINED_2021), 1) as PUCHASED_RATIO
FROM ONLINE_SALE as s join JOINED_2021 as j on s.USER_ID = j.USER_ID
GROUP BY DATE_FORMAT(s.SALES_DATE, '%Y'), DATE_FORMAT(s.SALES_DATE, '%m')
ORDER BY YEAR, MONTH









