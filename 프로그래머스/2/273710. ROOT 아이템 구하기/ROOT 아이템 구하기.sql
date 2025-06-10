-- 코드를 작성해주세요

SELECT t.ITEM_ID, i.ITEM_NAME
FROM ITEM_INFO as i 
    right join (SELECT ITEM_ID FROM ITEM_TREE WHERE PARENT_ITEM_ID is null) as t
    on i.ITEM_ID = t.ITEM_ID
ORDER BY t.ITEM_ID

    