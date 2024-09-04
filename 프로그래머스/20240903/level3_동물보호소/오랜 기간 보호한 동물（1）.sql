# 아직 입양 못 간 동물 중
# 가장 오래 보호소에 있던 동물 3마리
# 이름, 보호시작일
# ORDER BY 보호시작일 

SELECT
    I.NAME, I.DATETIME
FROM 
    ANIMAL_INS AS I
LEFT JOIN
    ANIMAL_OUTS AS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE 
    O.ANIMAL_ID IS NULL
ORDER BY 
    I.DATETIME ASC
LIMIT 3
;
    
