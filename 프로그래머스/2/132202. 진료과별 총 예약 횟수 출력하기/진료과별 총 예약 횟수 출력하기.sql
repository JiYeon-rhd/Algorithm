-- 코드를 입력하세요
-- 2022년 5월 예약한 환자 수를
-- 진료과코드별로 조회 
SELECT MCDP_CD as '진료과 코드', count(DISTINCT PT_NO) as '5월예약건수'
FROM APPOINTMENT
WHERE (YEAR(APNT_YMD) = '2022' and MONTH(APNT_YMD) = '5') 
GROUP BY MCDP_CD
ORDER BY count(*), '진료과 코드'