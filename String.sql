-- https://programmers.co.kr/learn/courses/30/lessons/59046
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS WHERE NAME IN ("Lucy","Ella","Pickle","Rogan","Sabrina","Mitty")

-- https://programmers.co.kr/learn/courses/30/lessons/59047
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS WHERE NAME LIKE "%el%" and ANIMAL_TYPE='DOG' ORDER BY NAME

-- https://programmers.co.kr/learn/courses/30/lessons/59409
SELECT 
    ANIMAL_ID, 
    NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%' THEN 'O'
        WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X'
    END AS '중성화'
FROM ANIMAL_INS

-- https://programmers.co.kr/learn/courses/30/lessons/59414
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d') as '날짜' FROM ANIMAL_INS 


-- https://programmers.co.kr/learn/courses/30/lessons/59411
WITH TBL AS (
    SELECT A.ANIMAL_ID, A.NAME,
    (B.DATETIME-A.DATETIME) as diff FROM ANIMAL_INS A
    INNER JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
    ORDER BY diff DESC
)
SELECT ANIMAL_ID, NAME FROM TBL LIMIT 2

-- https://programmers.co.kr/learn/courses/30/lessons/77487
WITH TBL AS
    (
        SELECT HOST_ID, COUNT(*) as count
        FROM PLACES
        GROUP BY HOST_ID
        HAVING count > 1
    )
SELECT A.ID, A.NAME, A.HOST_ID FROM PLACES A
INNER JOIN TBL B
ON A.HOST_ID = B.HOST_ID
ORDER BY ID