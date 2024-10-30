# 동물 보호소 가장 먼저 들어온 동물 이름 조회

SELECT
    NAME
FROM 
    ANIMAL_INS
ORDER BY 
    DATETIME ASC
LIMIT 1;
