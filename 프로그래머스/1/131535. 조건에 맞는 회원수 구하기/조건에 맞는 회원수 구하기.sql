# 2021년에 가입한 회원 중 
# 나이 20세 이상, 29세 이하
# 몇명인지

SELECT
    COUNT(*) AS USERS
FROM
    USER_INFO
WHERE
    YEAR(JOINED) = 2021
    AND
    (AGE >= 20 AND AGE <= 29)
;