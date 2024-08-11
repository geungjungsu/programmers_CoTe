# ECOLI_DATA 
# ID : 대장균 개체의 ID
# PARENT_ID : 부모 개체의 ID
# SIZE_OF_COLONY : 개체의 크기
# DIFFERENTIATION_DATE : 분화되어 나온 날짜 -> DATE
# GENOTYPE : 개체의 형질


SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE
((
(GENOTYPE & 1) = 1 OR
(GENOTYPE & 4) = 4 
)
AND
(GENOTYPE & 2) != 2
);