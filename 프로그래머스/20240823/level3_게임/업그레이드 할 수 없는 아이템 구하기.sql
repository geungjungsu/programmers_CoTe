# ITEM_A'->'ITEM_B
# PARENT ITEM : ITME_A는 ITEM_B의 PARENT 아이템
# PARENT ITMEM이 없으면 ROOT 아이템

# 더이상 업그레이드 할 수 없는 (-> 가 안되는 것)
# 아이템 ID
# 아이템 명
# 아이템의 희귀도
# 아이템 ID기준 내림차순

-- ITEM_TREE (업그레이드 할 수 없는 : 2, 3, 4)
# 0 -> 1, 2
# 1 -> 3, 4

# SELECT I.ITEM_ID, I.ITEM_NAME, I.RARITY 
# FROM ITEM_INFO AS I
# WHERE I.ITEM_ID NOT IN 
#                         (SELECT T.PARENT_ITEM_ID
#                         FROM ITEM_TREE AS T
#                         WHERE T.PARENT_ITEM_ID IS NOT NULL
#                         )
# ORDER BY I.ITEM_ID DESC;

SELECT I.ITEM_ID, I.ITEM_NAME, I.RARITY
FROM ITEM_INFO AS I
LEFT JOIN ITEM_TREE AS T
ON I.ITEM_ID = T.PARENT_ITEM_ID
WHERE T.PARENT_ITEM_ID IS NULL
ORDER BY I.ITEM_ID DESC;


