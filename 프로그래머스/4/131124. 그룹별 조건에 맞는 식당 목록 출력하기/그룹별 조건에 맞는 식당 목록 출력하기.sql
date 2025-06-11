-- 코드를 입력하세요
-- 리뷰를 가장 많이 작성한  -> 필터링
-- 회원들의 리뷰 조회
-- 회원 이름, 리뷰 텍스트, 리뷰 작성일
-- 리뷰 작성일 오름차순, 리뷰 텍스트 오름차순
-- 날짜 포맷 주의 !! 
-- 
with REVIEW_COUNT as(
    SELECT MEMBER_ID, count(*) as REVIEW_CNT
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
)

SELECT p.MEMBER_NAME, r.REVIEW_TEXT, DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM MEMBER_PROFILE as p join REST_REVIEW as r on p.MEMBER_ID = r.MEMBER_ID
WHERE p.MEMBER_ID in (
        SELECT MEMBER_ID
        FROM REVIEW_COUNT
        WHERE REVIEW_CNT = (SELECT max(REVIEW_CNT) FROM REVIEW_COUNT)
        )
ORDER BY r.REVIEW_DATE ASC, r.REVIEW_TEXT ASC