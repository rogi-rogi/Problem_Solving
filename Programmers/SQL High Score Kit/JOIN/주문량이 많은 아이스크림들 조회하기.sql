-- 주문량이 많은 아이스크림들 조회하기.sql
-- https://school.programmers.co.kr/learn/courses/30/lessons/133027

SELECT F.FLAVOR
FROM FIRST_HALF AS F JOIN JULY AS J ON F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY SUM(F.TOTAL_ORDER + J.TOTAL_ORDER) DESC LIMIT 3;
