# REST_INFO

# 음식종류별 
# 즐겨찾기 수 가장 많은 식당
# 음식 종류, ID, 식당이름, 즐겨찾기수
# ORDER BY 음식 종류 DESC ;



SELECT
    R.FOOD_TYPE, R.REST_ID, R.REST_NAME, R.FAVORITES
FROM
    REST_INFO AS R
JOIN
    (SELECT
        FOOD_TYPE, MAX(FAVORITES) AS MAX_COUNT
    FROM 
        REST_INFO
    GROUP BY
        FOOD_TYPE) AS X
    ON ((R.FOOD_TYPE = X.FOOD_TYPE) 
        AND
        (R.FAVORITES = X.MAX_COUNT))
ORDER BY
    FOOD_TYPE DESC ;