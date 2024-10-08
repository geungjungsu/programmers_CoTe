# PRODUCT 테이블과 OFFLINE_SALE 테이블에서
# 상품코드 별
# SUM(매출액(판매가 * 판매량))
# ORDER BY 매출액 DESC, 상품코드 ASC ;

SELECT
    PRODUCT_CODE, SUM(PRICE *SALES_AMOUNT) AS SALES
FROM
    PRODUCT AS P
JOIN
    OFFLINE_SALE AS O
    ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY 
    PRODUCT_CODE
ORDER BY
    SALES DESC, PRODUCT_CODE ASC
    ;

