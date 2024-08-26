# 중성화 여부
# 중성화 된 : Neutered 또는 Spayed

# 동물의 아이디, 이름, 중성화 여부(O,X)
# 아이디 순 조회

SELECT ANIMAL_ID, NAME,
CASE
    WHEN (SEX_UPON_INTAKE LIKE '%Neutered%') OR (SEX_UPON_INTAKE LIKE '%Spayed%') THEN 'O'
    ELSE 'X'
    END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
;
