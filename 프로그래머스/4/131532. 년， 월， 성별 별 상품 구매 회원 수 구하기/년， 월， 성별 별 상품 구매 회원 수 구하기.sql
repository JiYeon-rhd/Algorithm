-- 코드를 입력하세요
-- 년, 월, 성별 별로
-- 상품을 구매한 회원수!! 중복 제거 주의
-- 성별 정보가 없는 경우는 결과에서 제외

SELECT YEAR(o.SALES_DATE) as YEAR, MONTH(o.SALES_DATE) as MONTH, 
        u.GENDER, count(DISTINCT o.USER_ID) as USERS
FROM USER_INFO as u join ONLINE_SALE as o on u.USER_ID = o.USER_ID
WHERE u.GENDER is not null
GROUP BY YEAR(o.SALES_DATE), MONTH(o.SALES_DATE), u.GENDER
ORDER BY YEAR(o.SALES_DATE), MONTH(o.SALES_DATE), u.GENDER

