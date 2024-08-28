-- CAR_RENTAL_COMPANY_RENTAL_HISTORY
# ID
# AVAILABILITY 컬럼
# 2022년 10월 16에 대여 중인 자동차 : 대여중 (반납날이 16일이어도 대여중)
# 대여중이지 않은 자동차            : 대여 가능
# ORDER BY CAR_ID DESC ;

SELECT
    CAR_ID,
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE CAR_ID = c.CAR_ID
              AND START_DATE <= '2022-10-16'
              AND END_DATE >= '2022-10-16'
        ) THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM (
    SELECT DISTINCT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
) c
ORDER BY CAR_ID DESC;
