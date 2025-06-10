-- 코드를 입력하세요
-- 거래 게시물 3건 이상 등록한 사용자 조회 -> 필터링
-- 전체 주소 출력
-- 전화번호 형태 변환 
SELECT USER_ID, NICKNAME, 
        concat(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) as '전체주소',
        concat(LEFT(TLNO, 3), '-', SUBSTRING(TLNO, 4, 4), '-', RIGHT(TLNO, 4)) as '전화번호'
FROM USED_GOODS_USER
WHERE USER_ID in (
    SELECT WRITER_ID
    FROM USED_GOODS_BOARD
    GROUP BY WRITER_ID
    HAVING count(*) >= 3
    )
ORDER BY 1 DESC