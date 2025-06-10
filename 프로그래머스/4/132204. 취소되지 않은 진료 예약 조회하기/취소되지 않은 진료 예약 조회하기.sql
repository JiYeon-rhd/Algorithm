-- 코드를 입력하세요
-- 2022년 4월 13일 취소되지 않은 CS 예약 내역 조회
-- APNT_YMD 예약일시가 4월 13일이고, APNT_CNCL_YN 예약취소여부 N, CS
SELECT a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME, 
        a.APNT_YMD
FROM APPOINTMENT as a 
    join PATIENT as p on a.PT_NO = p.PT_NO
    join DOCTOR as d on a.MDDR_ID = d.DR_ID
WHERE a.MCDP_CD = 'CS'
    and DATE_FORMAT(a.APNT_YMD, '%Y-%m-%d') = '2022-04-13'
    and a.APNT_CNCL_YN  = 'N'
ORDER BY 6 ASC