# ANIMAL_INS : 동물의 정보

# 동물의 생물 종, 이름, 성별 및 중성화 여부
# ORDER BY 아이디 순 
# NULL -> No name

SELECT
    ANIMAL_TYPE, COALESCE(NAME,NULL,'No name') AS NAME, SEX_UPON_INTAKE
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID ;
