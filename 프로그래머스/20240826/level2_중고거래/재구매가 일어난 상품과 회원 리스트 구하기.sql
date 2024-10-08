-- ONLINE_SALE 
# ONLINE_SALE_ID : 온라인 상품 판매 ID
# USER_ID : 회원 ID
# PRODUCT_ID : 상품 ID
# SALES_AMOUNT : 판매량
# SALES_DATE : 판매일

# 동일한 회원이 동일한 상품을 재구매한 데이터
# 재구매 회원ID, 상품 ID
# ORDER BY 회원 ID, 상품ID ASC;

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >=2
ORDER BY USER_ID ASC, PRODUCT_ID DESC
;


