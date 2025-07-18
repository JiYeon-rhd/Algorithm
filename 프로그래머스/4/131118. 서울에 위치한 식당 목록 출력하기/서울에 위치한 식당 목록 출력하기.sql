-- 코드를 입력하세요
SELECT A.REST_ID, A.REST_NAME, A.FOOD_TYPE, A.FAVORITES, A.ADDRESS, round(avg(B.REVIEW_SCORE), 2) as SCORE
FROM REST_INFO as A join REST_REVIEW as B on A.REST_ID = B.REST_ID
WHERE A.ADDRESS like ('서울%')
GROUP BY A.REST_ID
ORDER BY SCORE DESC, A.FAVORITES DESC;