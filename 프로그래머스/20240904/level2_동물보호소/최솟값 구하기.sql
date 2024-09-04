# 동물보호소에 가장 먼저 들어온 동물은 언제 들어왔는지

SELECT
    MIN(DATETIME) AS '시간'
FROM 
    ANIMAL_INS
