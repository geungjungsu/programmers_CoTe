-- CAR_RENTAL_COMPANY_CAR : 대여 중인 자동차들의 정보
# CAR_ID
# CAR_TYPE
# DAILY_FEE
# OPTIONS

-- CAR_RENTAL_COMPANY_RENTAL_HISTORY : 자동차 대여 기록 정보
# HISTORY_ID
# CAR_ID
# START_DATE
# END_DATE

-- CAR_RENTAL_COMPANY_DISCOUNT_PLAN : 자동차 종류 별 대여 기간 종류
# PLAN_ID : 대여기록 ID
# CAR_TYPE
# DURATION_TYPE
# DISCOUNT_RATE (할인율 적용되는 대여 기간은 : 7일 이상(7-30), 30일이상(30-90), 90일 이상(90이상))

# 결과
# 자동차 종류 : 세단 OR SUV  (1번 문)
# 2022년 11월 1일 - 2022년 11월 30일 대여 가능  (1번 문)
# 30일간의 대여 금액 : 50만 <= X <= 200만  

# 자동차 ID, 자동차 종류, 대여금액(FEE)
# ORDER BY FEE DESC, 자동차 종류 ASC, 자동차ID DESC ;

-- 빌릴 수 있는 자동차 필터(1)
WITH RENTABLE AS
(
SELECT
    A.CAR_ID, A.CAR_TYPE, A.DAILY_FEE
FROM
    CAR_RENTAL_COMPANY_CAR AS A
LEFT JOIN
    CAR_RENTAL_COMPANY_RENTAL_HISTORY AS B
    ON (A.CAR_ID = B.CAR_ID) AND (B.START_DATE <= '2022-11-30' AND B.END_DATE >= '2022-11-01')
WHERE
    (B.CAR_ID IS NULL) AND
    (A.CAR_TYPE = 'SUV' OR A.CAR_TYPE = '세단')
),
-- 대여금액 테이블 생성(FEE)
FEE_TABLE AS
(
SELECT
    R.CAR_ID, R.CAR_TYPE,
    ROUND(R.DAILY_FEE * 30 * (1-(C.DISCOUNT_RATE/100))) AS FEE
FROM 
    RENTABLE AS R
JOIN
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS C
ON
     R.CAR_TYPE = C.CAR_TYPE
WHERE
     C.DURATION_TYPE = '30일 이상'
)

SELECT
    F.CAR_ID, F.CAR_TYPE, ROUND(F.FEE) AS FEE
FROM 
    FEE_TABLE AS F
WHERE
    F.FEE >= 500000 AND F.FEE < 2000000
ORDER BY 
    FEE DESC, CAR_TYPE ASC, CAR_ID DESC
;