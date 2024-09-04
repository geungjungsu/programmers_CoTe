# 12세 이하 여자환자의
# 환자이름, 환자번호, 성별코드, 나이, 전화번호

# 전화 번호 없는 경우 NONE으로 출력
# ORDER BY 나이 DESC, 환자이름 ASC;

SELECT
    PT_NAME, PT_NO, GEND_CD, AGE, COALESCE(TLNO,'NONE') AS TLNO
FROM 
    PATIENT
WHERE
    AGE <= 12 AND GEND_CD = 'W'
ORDER BY 
    AGE DESC, PT_NAME ASC
;
