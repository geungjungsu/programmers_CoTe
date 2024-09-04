# 동물보호소에 들어온 동물의 이름은 몇개?
# 이름이 NULL인 경우 집계 x , 중복 x

SELECT
    COUNT(DISTINCT NAME) AS COUNT
FROM
    ANIMAL_INS
WHERE
    NAME IS NOT NULL
;