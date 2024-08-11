SELECT CHILD.ID, CHILD.GENOTYPE, ADULT.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA AS CHILD
INNER JOIN ECOLI_DATA AS ADULT
ON ADULT.ID = CHILD.PARENT_ID
WHERE
(
CHILD.GENOTYPE & ADULT.GENOTYPE = ADULT.GENOTYPE
)
ORDER BY CHILD.ID ASC;