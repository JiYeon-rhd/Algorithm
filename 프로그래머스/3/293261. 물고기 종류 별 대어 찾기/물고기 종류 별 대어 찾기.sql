-- 코드를 작성해주세요
-- 물고기 종류별로 가장 큰 물로기
-- 물고기 아이디 오름차순


SELECT i.ID, n.FISH_NAME, i.LENGTH
FROM FISH_INFO as i
        join FISH_NAME_INFO as n on i.FISH_TYPE = n.FISH_TYPE
WHERE (i.FISH_TYPE, i.LENGTH) in (
        SELECT FISH_TYPE, max(LENGTH)
        FROM FISH_INFO
        WHERE LENGTH IS NOT NULL
        GROUP BY FISH_TYPE
        )
ORDER BY i.ID
