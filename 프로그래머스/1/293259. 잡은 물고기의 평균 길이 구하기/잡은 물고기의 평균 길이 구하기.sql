-- 코드를 작성해주세요
-- 물고기 평균 길이
-- 소수점 3째자리
-- 널은 10으로 취급

SELECT round(avg(i.LENGTH), 2) as AVERAGE_LENGTH
FROM (SELECT IFNULL(LENGTH, 10) as LENGTH  FROM FISH_INFO) as i



