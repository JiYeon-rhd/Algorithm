-- 물고기 종류 별 물고기 이름과 잡은수 출력
-- 잡은 수 내림차순


SELECT COUNT(i.ID) as FISH_COUNT, max(n.FISH_NAME) as FISH_NAME
FROM FISH_INFO as i left join FISH_NAME_INFO as n on i.FISH_TYPE = n.FISH_TYPE
GROUP BY i.FISH_TYPE
ORDER BY 1 DESC