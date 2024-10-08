-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람
# 회원 ID(U.USER_ID), 닉네임(U.NICKNAME), 총거래금액(B.PRICE)
# ORDER BY TOTAL_SALES ASC;

SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_USER AS U
JOIN USED_GOODS_BOARD AS B
ON U.USER_ID = B.WRITER_ID
WHERE B.STATUS = 'DONE'
GROUP BY USER_ID
HAVING SUM(PRICE) >= 700000
ORDER BY TOTAL_SALES ASC;
;
