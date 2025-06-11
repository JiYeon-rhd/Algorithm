-- 코드를 입력하세요
-- 2022년 1월 도서 판매 데이터 -> 필터링 
-- 저자별, 카테고리별 매출액
-- 저자 아이디 오름차순, 카테고리 내림차순

SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, 
        sum(s.SALES * b.PRICE) as TOTAL_SALES
FROM BOOK as b
    left join AUTHOR as a on b.AUTHOR_ID = a.AUTHOR_ID
    join BOOK_SALES as s on b.BOOK_ID = s.BOOK_ID
WHERE DATE_FORMAT(s.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY b.AUTHOR_ID, b.CATEGORY
ORDER BY b.AUTHOR_ID ASC,  b.CATEGORY DESC