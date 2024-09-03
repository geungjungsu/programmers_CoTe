# 보호소에 들어올 때 중성화 X : Intact
# 보호소 나갈 때    중성화 O : Spayed 또는 Neutered
# 동물의 아이디, 생물 종, 이름
# ORDER BY ID

SELECT
    I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM
    ANIMAL_INS AS I
JOIN 
    ANIMAL_OUTS AS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE
    I.SEX_UPON_INTAKE LIKE '%Intact%' AND 
    (O.SEX_UPON_OUTCOME LIKE '%Spayed%' OR O.SEX_UPON_OUTCOME LIKE '%Neutered%')
ORDER BY
    I.ANIMAL_ID
    ;
