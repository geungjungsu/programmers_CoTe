-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자
# 사용자 ID, 닉네임, 전체주소, 전화번호
# 전체주소 : 시, 도로명 주소, 상세주소
# 전화번호 : XXX-XXXX-XXXX
# ORDER BY USER ID DESC ;

SELECT USER_ID, NICKNAME, CONCAT(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) AS `전체주소`, CONCAT(SUBSTRING(TLNO,1,3),'-',SUBSTRING(TLNO,4,4),'-',SUBSTRING(TLNO,8,4)) AS `전화번호`
FROM USED_GOODS_USER
WHERE USER_ID IN
(
SELECT WRITER_ID
FROM USED_GOODS_BOARD 
GROUP BY WRITER_ID
HAVING COUNT(*) >= 3
)
ORDER BY USER_ID DESC
;




