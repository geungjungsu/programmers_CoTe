# 2022년 10월 5일
# 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태
# 거래상태 SALE이면 판매중, RESERVED면 예약중, DONE이면 거래완료
# ORDER BY BOART_ID DESC;

SELECT U.BOARD_ID ,U.WRITER_ID , U.TITLE, U.PRICE,
CASE
    WHEN `STATUS` = 'SALE' THEN '판매중'
    WHEN `STATUS` = 'RESERVED' THEN '예약중'
    WHEN `STATUS` = 'DONE' THEN '거래완료'
    END AS `STATUS`
FROM USED_GOODS_BOARD AS U
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC
;
