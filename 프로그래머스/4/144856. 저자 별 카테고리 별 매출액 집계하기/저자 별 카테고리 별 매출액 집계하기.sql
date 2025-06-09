-- 코드를 입력하세요
-- 2022년 1월의 도서 판매 데이터
-- 저자별, 카테고리 별 매출액
SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY,
        sum(b.PRICE * bs.SALES) as TOTAL_SALES
FROM BOOK as b join AUTHOR as a on b.AUTHOR_ID = a.AUTHOR_ID
               join BOOK_SALES as bs on b.BOOK_ID = bs.BOOK_ID
WHERE DATE_FORMAT(bs.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY b.AUTHOR_ID, b.CATEGORY
ORDER BY b.AUTHOR_ID, b.CATEGORY DESC