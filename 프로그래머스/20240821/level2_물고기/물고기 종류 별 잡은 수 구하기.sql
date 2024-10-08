# 물고기 종류별 물고기 이름 : FISH_NAME
# 잡은 수 : FISH_COUNT

SELECT COUNT(*) AS FISH_COUNT,N.FISH_NAME AS FISH_NAME
FROM FISH_INFO AS I
INNER JOIN FISH_NAME_INFO AS N
ON N.FISH_TYPE = I.FISH_TYPE
GROUP BY N.FISH_NAME
ORDER BY FISH_COUNT DESC
;
