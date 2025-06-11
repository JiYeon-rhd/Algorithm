-- 코드를 입력하세요
-- 서울에 위치한 식당 조회
-- 리뷰 평균 소수점 두자리
-- 평균 내림차순, 즐겨찾기 내림차순

SELECT i.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS,
        round(avg(r.REVIEW_SCORE), 2) as SCORE
FROM REST_INFO as i join REST_REVIEW as r on i.REST_ID = r.REST_ID
WHERE ADDRESS like('서울%')
GROUP BY i.REST_ID
ORDER BY 6 DESC, 4 DESC