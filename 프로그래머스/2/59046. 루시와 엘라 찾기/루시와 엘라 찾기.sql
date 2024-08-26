-- ANIMAL_INS
# ANIMAL_ID : 동물의 아이디
# ANIMAL_TYPE : 생물 종
# DATETIME : 보호 시작일
# INTAKE_CONDITION : 보호 시작 시 상태
# NAME : 이름
# SEX_UPON_INTAKE : 성별 및 중성화 여부

# Lucy, Ella, Pickle, Rogan, Sabrina, Mitty 인 동물의 
# 동물의 아이디, 이름, 성별 및 중성화 여부
# ORDER BY ANIMAL_ID

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE ((NAME = 'Lucy') OR
      (NAME = 'Ella') OR
      (NAME = 'Pickle') OR
      (NAME = 'Rogan') OR
      (NAME = 'Sabrina') OR
      (NAME = 'Mitty'))
ORDER BY ANIMAL_ID
;


# SELECT 
# FROM ANIMAL_INS
# WHERE GROUP_CONCAT(NAME) LIKE 