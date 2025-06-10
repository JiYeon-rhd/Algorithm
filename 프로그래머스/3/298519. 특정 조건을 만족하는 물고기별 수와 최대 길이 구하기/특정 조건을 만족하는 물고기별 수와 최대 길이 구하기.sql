-- 코드를 작성해주세요
-- 평균 길이가 33 이상인 물고기들을 종류별로 분류 -> 잡은 수, 최대 길이, 물고기의 종류 
-- 10 이하의 물고기들은 10으로 취급하여 평균길이
-- 물고기 종류에 대해 오름차순

-- 길이 Null인거 10으로 처리 -> 종류별로 그룹바이 , 갯수 세기, 평균 길이, 

SELECT count(*) as FISH_COUNT, max(LENGTH) as MAX_LENGTH, FISH_TYPE
FROM (SELECT ID, FISH_TYPE, IFNULL(LENGTH, 10) as LENGTH
      FROM FISH_INFO) as i
GROUP BY FISH_TYPE
HAVING avg(LENGTH) >= 33
ORDER BY FISH_TYPE