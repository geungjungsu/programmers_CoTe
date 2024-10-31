# ANIMAL_INS : 동물의 정보

# 각 동물 아이디, 이름, 들어온 날짜
# ORDER BY ID

SELECT
    ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d')
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID ;
