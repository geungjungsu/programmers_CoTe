# 7월 아이스크림 총 주문량 
# 상반기 아이스크림 총 주문량을 더한 값이 큰 순서대로
# 상위 3개 
-- FIRST_HALF(상반기 주문 정보) : STRAWBERRY 1개
# :  아이스크림 가게까지 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량

-- JULY(7월 아이스크림 주문 정보) : STARWBERRY 2개
# : 각 아이스크림 공장에서 가게까지 출하번호, 아이스크림 맛, 7월 아이스크림 총주문량

WITH NAME_TEMP AS(
SELECT 
    J.FLAVOR,
    SUM(J.TOTAL_ORDER) + SUM(FH.TOTAL_ORDER) AS SUM_TEMP
FROM 
    JULY AS J
LEFT JOIN
    FIRST_HALF AS FH
    ON J.SHIPMENT_ID = FH.SHIPMENT_ID
GROUP BY 
    J.FLAVOR
ORDER BY 
    SUM_TEMP DESC
)

SELECT
    FLAVOR
FROM 
    NAME_TEMP
LIMIT 3
;
