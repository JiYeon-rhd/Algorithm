-- 코드를 작성해주세요
-- 더 이상 업그레이드 할 수 없는 아이템
-- 아이디 내림차순

SELECT  ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID not in (
        SELECT PARENT_ITEM_ID
        FROM ITEM_TREE
        WHERE PARENT_ITEM_ID is not null
    )
ORDER BY ITEM_ID DESC