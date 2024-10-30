# CART_PRODUCTS : 장바구니에 담긴 상품 정보

# 우유와 요거트를 동시에 구입한 장바구니
# ORDER BY 장바구니아이디

SELECT
    CART_ID
FROM
    CART_PRODUCTS
WHERE
    NAME IN ('Yogurt', 'Milk')
GROUP BY
    CART_ID
HAVING
    COUNT(DISTINCT NAME) = 2
ORDER BY
    CART_ID ;