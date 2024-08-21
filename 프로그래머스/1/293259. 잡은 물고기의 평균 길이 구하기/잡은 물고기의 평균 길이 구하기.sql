# 잡은 물고기 평균 길이 출력 - AVERAGE_LENGTH
# 소수점 3쨰자리 반올림, 
# 10CM 이하 물고기는 10CM로 취급

SELECT ROUND(AVG(COALESCE(LENGTH,10)),2) AS AVERAGE_LENGTH
FROM FISH_INFO
;
