# PLACES : 공간 임대 서비스 등록된 공간의 정보

 #공간을 둘 이상 등록한 사람 : 헤비 유저
 # 헤비 유저가 등록한 공간의 정보
 # ORDER BY ID ;


SELECT 
    ID, NAME, HOST_ID
FROM
    PLACES AS P
WHERE 
    HOST_ID IN
(
    SELECT 
        HOST_ID
    FROM
        PLACES
    GROUP BY
        HOST_ID
    HAVING COUNT(*) >= 2
)
ORDER BY 
    ID ;