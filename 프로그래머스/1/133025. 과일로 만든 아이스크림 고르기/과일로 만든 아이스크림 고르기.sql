# 상반기 아이스크림 총주문량이 3000보다 높고 
# 주성분이 과일인 아이스크림 맛
# 총주문량 큰 순서대로 조회

-- 상반기 아이스크림 총주문량 3000보다 높음
SELECT
    FH.FLAVOR 
FROM 
    FIRST_HALF AS FH
JOIN
    ICECREAM_INFO AS II
    ON FH.FLAVOR = II.FLAVOR
WHERE
    TOTAL_ORDER > 3000 AND INGREDIENT_TYPE = 'fruit_based'
ORDER BY
    TOTAL_ORDER DESC
    ;


