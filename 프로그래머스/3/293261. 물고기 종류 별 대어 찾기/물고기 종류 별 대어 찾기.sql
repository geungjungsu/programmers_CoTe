# FISH_NAME_INFO
-- FISH_TYPE : INT
-- FISH_NAME : VAR

# 종류 별로 가장 큰 물고기
# ID, LENGTH

SELECT I.ID, N.FISH_NAME, `MAX`.MAX_LENGTH AS LENGTH
FROM FISH_INFO AS I
INNER JOIN FISH_NAME_INFO AS N ON
N.FISH_TYPE = I.FISH_TYPE
INNER JOIN 
(SELECT FISH_TYPE, MAX(LENGTH) AS MAX_LENGTH
 FROM FISH_INFO
 GROUP BY FISH_TYPE
) AS `MAX`
ON `MAX`.FISH_TYPE = I.FISH_TYPE AND I.LENGTH = `MAX`.MAX_LENGTH
ORDER BY I.ID ASC ;



