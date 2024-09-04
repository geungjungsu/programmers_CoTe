# 상반기 아이스크림 성분 타입, 타입에 대한 아이스크림 총 주문량
# 총주문량 작은 순서대로 조회 : TOTAL_ORDER

# FIRST_HALF : 상반기 아이스크림 총주문량 포함
# ICECREAM_INFO  : 각 아이스크림 맛, 성분타입

SELECT
    INGREDIENT_TYPE,
    SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM
    ICECREAM_INFO AS II
JOIN
    FIRST_HALF AS FH
    ON II.FLAVOR = FH.FLAVOR
GROUP BY
    INGREDIENT_TYPE	
ORDER BY
    TOTAL_ORDER ASC
    ;