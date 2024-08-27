# 동물 이름 >= 2 사용 
# 이름과 횟수
# 이름이 없는 동물은 제외
# 이름순 조회

SELECT NAME, COUNT(*) AS COUNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING (COUNT(*) >= 2) AND (NAME IS NOT NULL)
ORDER BY NAME
;

