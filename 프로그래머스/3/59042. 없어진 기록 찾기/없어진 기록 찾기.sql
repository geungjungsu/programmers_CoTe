-- ANIMAL_INS : 동물 보호소 들어온 동물의 정보
# ANIMAL_ID : 동물의 아이디
# ANIMAL_TYPE : 생물 종
# DATETIME : 보호 시작일
# INTAKE_CONDITION : 보호 시작 시 상태
# NAME : 이름
# SEX_UPON_INTAKE : 성별 및 중성화 여부

-- ANIMAL_OUTS : 동물보호소 입양 보낸 동물의 정보
# ANIMAL_ID : 동물의 아이디
# ANIMAL_TYPE : 생물 종
# DATETIME : 입양일
# NAME : 이름
# SEX_UPON_OUTCOME : 성별 및 중성화 여부
# ANIMAL_OUTS 테이블의 ANIMAL_ID는 ANIMAL_INS의 ANIMAL_ID의 외래 키

# 입양 기록은 있는데 보호소에 들어온 기록이 없는 동물의
# ID, 이름
# ORDER BY ID ;

SELECT 
    O.ANIMAL_ID, O.NAME
FROM 
    ANIMAL_OUTS AS O
LEFT JOIN 
    ANIMAL_INS AS I
    ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE 
    I.ANIMAL_ID IS NULL
ORDER BY 
    O.ANIMAL_ID
;