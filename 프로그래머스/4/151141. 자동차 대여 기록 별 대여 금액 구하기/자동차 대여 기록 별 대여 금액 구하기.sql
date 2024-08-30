# 자동차 종류 : 트럭
# 대여기록 별(HISTORY_ID)
# 대여기록ID, 대여금액(FEE) 
# ORDER BY FEE DESC, 대여기록ID DESC ;

-- 1. 자동차 종류가 트럭인 대여 기록 추출
WITH TRUCK_TABLE AS(
SELECT
    A.CAR_ID,A.CAR_TYPE, A.DAILY_FEE,
    B.HISTORY_ID, B.START_DATE,B.END_DATE
FROM
    CAR_RENTAL_COMPANY_CAR AS A
INNER JOIN 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY AS B
    ON A.CAR_ID = B.CAR_ID
WHERE 
    CAR_TYPE = '트럭'
),

-- 2. 트럭 대여 기간 계산
DURATIONS AS(
SELECT
    HISTORY_ID,
    CAR_ID,
    CAR_TYPE,
    DAILY_FEE,
    DATEDIFF(END_DATE, START_DATE) + 1 AS DAYS
FROM
    TRUCK_TABLE AS T
)

-- 3. 대여 금액 계산
SELECT
    D.HISTORY_ID,
    CASE
        WHEN D.DAYS < 7 THEN ROUND(DAILY_FEE * D.DAYS)
        WHEN D.DAYS < 30 THEN ROUND(DAILY_FEE * D.DAYS * (1-(DISCOUNT_RATE/100)))
        WHEN D.DAYS < 90 THEN ROUND(DAILY_FEE * D.DAYS * (1-(DISCOUNT_RATE/100)))
        WHEN D.DAYS >= 90 THEN ROUND(DAILY_FEE * D.DAYS * (1-(DISCOUNT_RATE/100)))
        END AS FEE
FROM
    DURATIONS AS D
JOIN
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS C
    ON (D.CAR_TYPE = C.CAR_TYPE)
    AND(
    (D.DAYS < 7 AND DURATION_TYPE IS NULL) OR
    (D.DAYS < 30 AND DURATION_TYPE = '7일 이상') OR
    (D.DAYS < 90 AND DURATION_TYPE = '30일 이상') OR
    (D.DAYS >= 90 AND DURATION_TYPE = '90일 이상')
    )
GROUP BY 
    HISTORY_ID
ORDER BY FEE DESC, HISTORY_ID DESC;
    

    




