# LOCATION1 : 지역구분1(VAR)
# LOCATION2 : 지역구분2(VAR)
# YM : 측정일(DATE)
# PM_VAL1 : 미세먼지 오염도
# PM_VAL2 : 초미세먼지 오염도

# 수원 지역의 연도 별
# 평균 미세먼지 오염도 : PM10
# 평균 초미세먼지 오염도 : PM2.5
# 셋째 자리 반올림

SELECT
YEAR(YM) AS YEAR,
ROUND(AVG(PM_VAL1),2) AS PM10,
ROUND(AVG(PM_VAL2),2) AS `PM2.5`
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY YEAR(YM) ASC;