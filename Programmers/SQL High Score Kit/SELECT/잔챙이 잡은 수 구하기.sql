-- https://school.programmers.co.kr/learn/courses/30/lessons/293258
-- 잔챙이 잡은 수 구하기.sql

SELECT COUNT(*) AS 'FISH_COUNT'
  FROM FISH_INFO
 WHERE LENGTH IS NULL;
