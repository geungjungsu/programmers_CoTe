# 모든 동물 아이디, 이름, 보호 시작일 
# ORDER BY 이름, 보호 시작일
# 이름 같은 동물 중 -> 보호를 나중에 시작한 동물 먼저

SELECT
    ANIMAL_ID, NAME, DATETIME
FROM
    ANIMAL_INS
ORDER BY 
    NAME, DATETIME DESC;
