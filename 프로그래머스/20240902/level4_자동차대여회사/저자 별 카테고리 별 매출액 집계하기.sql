# BOOK_SALES 테이블 : 2022년 1월 기준
# 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가

# -----------------------------------------------

#  저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES)

# ORDER BY AUTHOR_ID ASC, CATEGORY DESC ;

# 2022년 1월 데이터
WITH TEMP_BOOK AS(
SELECT 
    BOOK_ID, SUM(SALES) AS TOTAL_SALES
FROM
    BOOK_SALES
WHERE
    SALES_DATE >= '2022-01-01' AND SALES_DATE < '2022-02-01'
GROUP BY BOOK_ID
)

SELECT
    A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, SUM(TOTAL_SALES * PRICE) AS TOTAL_SALES
FROM
    TEMP_BOOK AS T
JOIN
    BOOK AS B
    ON T.BOOK_ID = B.BOOK_ID
JOIN 
    AUTHOR AS A
    ON B.AUTHOR_ID = A.AUTHOR_ID
GROUP BY 
    AUTHOR_ID, CATEGORY
ORDER BY 
    AUTHOR_ID ASC, CATEGORY DESC
    ;


