-- 코드를 작성해주세요
-- 부서 정보, 사원 정보, 평가 정보
-- 사원별 성과금 정보 조회
-- 평가 점수별 등급과 등급에 따른 정보
-- 사원별 평균 평가 점수 구하기 -> 사원 정보에 붙이기 -> 기준 점수로 등급과 성과금 계산

with TOTAL_GRADE as (
    SELECT EMP_NO, avg(SCORE) as SCORE
    FROM HR_GRADE
    GROUP BY EMP_NO
),
TOTAL_BONUS as(SELECT e.EMP_NO, e.EMP_NAME, g.SCORE, 
    (CASE
        WHEN 96 <= g.SCORE THEN 'S' 
        WHEN 90 <= g.SCORE and g.SCORE < 96 THEN 'A' 
        WHEN 80 <= g.SCORE and g.SCORE < 90 THEN 'B' 
        ELSE 'C'
    END ) AS GRADE, e.SAL
FROM HR_EMPLOYEES as e join TOTAL_GRADE as g on e.EMP_NO = g.EMP_NO)

SELECT EMP_NO, EMP_NAME, GRADE,
        (CASE
        WHEN GRADE = 'S' THEN SAL * 0.2
        WHEN GRADE = 'A' THEN SAL * 0.15
        WHEN GRADE = 'B' THEN SAL * 0.1
        ELSE 0
    END ) AS BONUS

FROM TOTAL_BONUS
ORDER BY EMP_NO

  
