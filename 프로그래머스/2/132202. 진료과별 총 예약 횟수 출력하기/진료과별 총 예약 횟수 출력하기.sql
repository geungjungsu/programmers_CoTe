# 2022년 5월 예약한 환자수
# 진료과코드 별로 조회

#진료과 코드, 5월 예약 건수
# ORDER BY 진료과별 예약 환자수 ASC, 진료과 코드 ASC ;
 
SELECT
    MCDP_CD AS '진료과코드',
    COUNT(*) AS '5월예약건수'
FROM
    APPOINTMENT
WHERE
    APNT_YMD >= '2022-05-01' AND APNT_YMD < '2022-06-01'
GROUP BY
    MCDP_CD
ORDER BY
    COUNT(*) ASC, MCDP_CD ASC
    ;