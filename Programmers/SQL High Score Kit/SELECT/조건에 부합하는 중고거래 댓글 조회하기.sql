-- 조건에 부합하는 중고거래 댓글 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/164673

SELECT
    Q.TITLE,
    Q.BOARD_ID,
    A.REPLY_ID,
    A.WRITER_ID,
    A.CONTENTS,
    DATE_FORMAT(A.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS Q INNER JOIN USED_GOODS_REPLY AS A
    ON Q.BOARD_ID = A.BOARD_ID
WHERE Q.CREATED_DATE LIKE '2022-10%'
ORDER BY A.CREATED_DATE, 1;
