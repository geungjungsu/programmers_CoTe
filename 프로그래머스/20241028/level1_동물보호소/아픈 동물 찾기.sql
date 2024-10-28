#  ANIMAL_INS

# 동물 보호소 들어온 동물 중
# 아픈 동물 아이디, 이름 조회
# ORDER BY 아이디 ;

SELECT 
    ANIMAL_ID, NAME
FROM 
    ANIMAL_INS
WHERE 
    INTAKE_CONDITION = 'Sick'
ORDER BY
    ANIMAL_ID ;
