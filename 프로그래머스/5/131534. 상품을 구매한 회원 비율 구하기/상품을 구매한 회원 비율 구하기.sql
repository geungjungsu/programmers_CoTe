-- USER_INFO 테이블과 ONLINE_SALE 테이블에서
# 2021년에 가입한 전체 회원들 중 
# 상품을 구매한 회원수와 상품을 구매한 회원의 비율
# 
# (= 2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)
# 년,월 별로 출력
# 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림
# ORDER BY YEAR ASC, MONTH ASC ;

# 가입일(USER_INFO.JOINED)

# -- 2021년에 가입한 전체 회원의 USER_ID
# WITH USER_TEMP AS (
#     SELECT
#         USER_ID
#     FROM
#         USER_INFO 
#     WHERE 
#         YEAR(JOINED) = 2021
# ),

# -- 2021년에 가입한 회원 중 구매까지 이루어진 회원

-- 2021년에 가입한 사람 TABLE
WITH USER_TEMP AS 
(
    SELECT 
        * 
    FROM 
        USER_INFO 
    WHERE 
        YEAR(JOINED) = 2021
)

SELECT
    YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    COUNT(DISTINCT UI.USER_ID) AS PURCHASED_USERS,
    ROUND(COUNT(DISTINCT UI.USER_ID) / (SELECT COUNT(USER_ID) FROM USER_TEMP),1) AS PUCHASED_RATIO
FROM 
    USER_INFO AS UI
JOIN
    ONLINE_SALE AS OS
    ON UI.USER_ID = OS.USER_ID
WHERE
    YEAR(JOINED) = 2021
GROUP BY
    YEAR(SALES_DATE), MONTH(SALES_DATE)
ORDER BY 
    YEAR ASC, MONTH ASC;


