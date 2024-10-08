-- CAR_RENTAL_COMPANY_RENTAL_HISTORY

# 평균 대여 기간 7일 이상인 자동차
# 자동차 ID, 평균대여기간(AVERAGE_DURATION : 소수점 두번째 자리 반올림)
# ORDER BY AVERAGE_DURATION CAR_ID DESC ;

SELECT
CAR_ID,
ROUND(AVG(DATEDIFF(END_DATE,START_DATE)+1),1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING ROUND(AVG(DATEDIFF(END_DATE,START_DATE)+1),1) >= 7
ORDER BY AVERAGE_DURATION DESC ,CAR_ID DESC
;
    


