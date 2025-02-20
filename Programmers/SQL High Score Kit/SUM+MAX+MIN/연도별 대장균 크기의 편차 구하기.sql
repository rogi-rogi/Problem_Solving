-- https://school.programmers.co.kr/learn/courses/30/lessons/299310
-- 연도별 대장균 크기의 편차 구하기.sql

SELECT YEAR(E.DIFFERENTIATION_DATE) AS 'YEAR',
       (EE.MAX_SIZE_OF_COLONY - E.SIZE_OF_COLONY) AS 'YEAR_DEV',
       E.ID
  FROM ECOLI_DATA AS E
       INNER JOIN
       (SELECT 
               YEAR(DIFFERENTIATION_DATE) AS YEAR,
               MAX(SIZE_OF_COLONY) AS MAX_SIZE_OF_COLONY
        FROM ECOLI_DATA
        GROUP BY YEAR(DIFFERENTIATION_DATE)
       ) AS EE
       ON EE.YEAR = YEAR(E.DIFFERENTIATION_DATE)
 ORDER BY 1, 2;
