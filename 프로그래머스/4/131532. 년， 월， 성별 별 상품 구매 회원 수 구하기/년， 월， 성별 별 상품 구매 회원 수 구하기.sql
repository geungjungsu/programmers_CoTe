-- USER_INFO 테이블과 ONLINE_SALE 테이블에
# 년, 월, 성별별
# 상품 구매한 회원수 
# 결과는 년,월,성별 기준으로 오름차순
# 성별은 결측 제외하기

SELECT YEAR(sales_date) AS YEAR, MONTH(sales_date) AS MONTH,
gender AS GENDER, COUNT(DISTINCT I.USER_ID) AS USERS
FROM USER_INFO AS I
JOIN ONLINE_SALE AS S
ON S.USER_ID = I.USER_ID
WHERE gender IS NOT NULL
GROUP BY YEAR(sales_date), MONTH(sales_date), gender
ORDER BY YEAR(sales_date), MONTH(sales_date), gender ASC
;

