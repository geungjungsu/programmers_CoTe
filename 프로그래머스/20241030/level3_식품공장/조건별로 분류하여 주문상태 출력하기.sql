# FOOD_ORDER : 식품공장 주문정보

# 2022년 5월 1일 기준
# 주문 ID, 제품ID, 출고일자, 출고여부

# 출고 여부 : 2022년 5월 1일까지 출고 되어있으면 -> 출고완료로
# 이후 날짜는 출고 대기로 
# 미정이면 출고미정으로 출력

# ORDER BY 주문 ID ASC ;

SELECT
    ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE,'%Y-%m-%d') AS OUT_DATE,
    CASE
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
        WHEN OUT_DATE IS NULL THEN '출고미정'
        ELSE '출고대기'
        END AS `출고여부`
FROM 
    FOOD_ORDER
ORDER BY
    ORDER_ID ASC ;
    

