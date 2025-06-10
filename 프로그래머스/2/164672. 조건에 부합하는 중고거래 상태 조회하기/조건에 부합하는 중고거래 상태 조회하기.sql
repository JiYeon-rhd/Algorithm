-- 코드를 입력하세요
-- 2022년 10월 
-- 거래상태에 따라 출력
-- 게시글 id 내림차순
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
    (CASE
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'RESERVED' THEN '예약중'
        ELSE '거래완료'
     END) as STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY 1 DESC