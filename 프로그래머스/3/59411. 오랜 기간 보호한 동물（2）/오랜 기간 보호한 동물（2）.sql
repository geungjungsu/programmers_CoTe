# ANIMAL_INS  : 보호소 들어온 동물의 정보
# ANIMAL_OUTS : 입양 보낸 동물의 정보
# 공통 : ANIMAL_ID

# 입양 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름 조회
# ORDER BY 보호 기간 DESC ;

SELECT
    O.ANIMAL_ID, O.NAME
FROM 
    ANIMAL_OUTS AS O
JOIN
    ANIMAL_INS AS I
    ON O.ANIMAL_ID = I.ANIMAL_ID
ORDER BY 
    DATEDIFF(O.DATETIME, I.DATETIME) DESC
LIMIT 2
;
