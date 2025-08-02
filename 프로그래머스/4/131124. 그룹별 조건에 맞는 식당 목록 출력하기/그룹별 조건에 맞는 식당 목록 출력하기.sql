-- 리뷰를 가장 많이 작성한 회원의 리뷰 조화
-- 이름, 리뷰 텍스트, 리뷰 작성일 출력
-- 리뷰 작성일 기준으로 오름차순, 리뷰 텍스트 오름차순

WITH review_count as(
    SELECT MEMBER_ID, COUNT(REVIEW_ID) as REVIEW_NUM
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY REVIEW_NUM DESC
),
max_review as (
    SELECT *
    FROM review_count
    WHERE REVIEW_NUM = (SELECT MAX(REVIEW_NUM) FROM review_count)
)
SELECT p.MEMBER_NAME, r.REVIEW_TEXT, DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM max_review as m left join MEMBER_PROFILE as p on m.MEMBER_ID = p.MEMBER_ID
 join REST_REVIEW as r on m.MEMBER_ID = r.MEMBER_ID
ORDER BY 1, 3, 2

