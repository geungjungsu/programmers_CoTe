-- HR_DEPARTMENT  : 회사 부서 정보
-- DEPT_ID
# DEPT_ID : 각각 부서 ID 
# DEPT_NAME_KR : 국문 부서명
# DEPT_NAME_EN : 영문 부서명 
# LOCATION : 부서 위치

-- HR_EMPLOYEES : 회사 사원 정보
-- DEPT_ID
# EMP_NO : 사번
# EMP_NAME : 성명
# DEPT_ID : 부서 ID
# POSITION : 직책
# EMAIL : 이메일
# COMP_TEL : 전화번호
# HIRE_DATE : 입사일
# SAL : 연봉

# 부서별
# 부서ID, 
#영문 부서명
#평균 연봉, 소수점 첫째자리 반올림 : AVG_SAL
# 평균 연봉 내림차순

SELECT 
D.DEPT_ID AS DEPT_ID,
D.DEPT_NAME_EN AS DEPT_NAME_EN,
ROUND(AVG(E.SAL)) AS AVG_SAL
FROM HR_DEPARTMENT AS D
INNER JOIN HR_EMPLOYEES AS E 
ON E.DEPT_ID = D.DEPT_ID
GROUP BY D.DEPT_ID
ORDER BY AVG(E.SAL) DESC
;
