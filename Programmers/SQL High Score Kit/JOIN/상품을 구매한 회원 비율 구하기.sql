// https://school.programmers.co.kr/learn/courses/30/lessons/131534
// 상품을 구매한 회원 비율 구하기.sql

SET @TEMP = (SELECT COUNT(USER_ID) FROM USER_INFO WHERE JOINED BETWEEN '2021-01-01' AND '2021-12-31');

SELECT YEAR(T2.SALES_DATE) AS YEAR,
       MONTH(T2.SALES_DATE) AS MONTH,
       COUNT(DISTINCT T1.USER_ID) AS PURCHASED_USERS,
       ROUND(COUNT(DISTINCT T1.USER_ID) / @TEMP, 1) AS PUCHASED_RATIO
  FROM USER_INFO AS T1
       JOIN
       ONLINE_SALE AS T2
       ON T1.USER_ID = T2.USER_ID AND T1.JOINED BETWEEN '2021-01-01' AND '2021-12-31'
 GROUP BY MONTH(T2.SALES_DATE)
 ORDER BY 1, 2
