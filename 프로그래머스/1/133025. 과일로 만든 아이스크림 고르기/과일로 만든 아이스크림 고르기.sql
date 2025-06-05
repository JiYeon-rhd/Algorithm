-- 코드를 입력하세요
SELECT f.FLAVOR
FROM FIRST_HALF as f left join ICECREAM_INFO as i on f.FLAVOR = i.FLAVOR
WHERE f.TOTAL_ORDER >3000 and i.INGREDIENT_TYPE = 'fruit_based';