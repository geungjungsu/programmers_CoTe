# ID : 고기의 ID (INT)
# FISH_TYPE : 물고기의 종류(숫자) (INT)
# LENGTH : 잡은 물고기의 길이(cm) (FLOAT) (NULL)
-- LENGTH <= 10 : NULL
# TIME : 물고기를 잡은 날짜 (DATE)

SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID ASC
LIMIT 10
;