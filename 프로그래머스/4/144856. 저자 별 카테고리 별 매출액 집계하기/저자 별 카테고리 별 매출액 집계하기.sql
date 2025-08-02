-- 2022년 1월 저자별, 카테고리별 매출액 구하기
-- 저자 id 오름차순, 카테고리 내림차순

WITH date_count as(
    SELECT *
    FROM BOOK_SALES
    WHERE SALES_DATE like '2022-01%'
)    
SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(d.SALES*b.PRICE) AS TOTAL_SALES
    FROM BOOK as b join date_count as d on b.BOOK_ID = d.BOOK_ID
        left join AUTHOR as a on b.AUTHOR_ID = a.AUTHOR_ID
    GROUP BY b.AUTHOR_ID, b.CATEGORY
    ORDER BY 1, 3 DESC