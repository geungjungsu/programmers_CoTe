# 상반기 판매된 아이스크림 맛의 총주문량 DESC, 출하번호 ASC

SELECT
    FLAVOR
FROM   
    FIRST_HALF
ORDER BY
    TOTAL_ORDER DESC, SHIPMENT_ID ASC
    ;
