-- 코드를 작성해주세요
-- 희귀도 레어인 아이템들의 다음 업그레이드 아이템 출력
-- 아이템 아이디 기준으로 내림차순

SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID in (
            SELECT ITEM_ID
            FROM ITEM_TREE
            WHERE PARENT_ITEM_ID in (
                        SELECT ITEM_ID # 레어인 아이템
                        FROM ITEM_INFO
                        WHERE RARITY = 'RARE'
                            )
                )
ORDER BY 1 DESC


