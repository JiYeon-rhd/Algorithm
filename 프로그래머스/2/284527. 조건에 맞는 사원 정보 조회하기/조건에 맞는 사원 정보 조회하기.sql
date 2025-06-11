-- 코드를 작성해주세요
-- 2022년도 평가 점수 가장 높은 사원만 정보 조회
-- 상하반기 점수 합

with TOP_SCORE as(
    SELECT EMP_NO, sum(SCORE) as SCORE
    FROM HR_GRADE
    WHERE YEAR = 2022
    GROUP BY EMP_NO
)
SELECT s.SCORE, e.EMP_NO, e.EMP_NAME, e.POSITION, e.EMAIL
FROM HR_EMPLOYEES as e left join TOP_SCORE as s on e.EMP_NO = s.EMP_NO
WHERE s.SCORE = (SELECT max(SCORE) FROM TOP_SCORE) 


            
            
            