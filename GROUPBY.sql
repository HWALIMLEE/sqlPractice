-- problem
-- https://programmers.co.kr/learn/courses/30/lessons/59040
SELECT ANIMAL_TYPE, COUNT(*) AS count FROM ANIMAL_INS GROUP BY ANIMAL_TYPE ORDER BY ANIMAL_TYPE ASC


-- https://programmers.co.kr/learn/courses/30/lessons/59041
SELECT NAME, COUNT(NAME) as COUNT FROM ANIMAL_INS WHERE NAME IS NOT NULL GROUP BY NAME HAVING COUNT > 1 ORDER BY NAME


-- https://programmers.co.kr/learn/courses/30/lessons/59412
SELECT HOUR(DATETIME) as HOUR, COUNT(*) as COUNT FROM ANIMAL_OUTS WHERE HOUR(DATETIME) >= 9 and HOUR(DATETIME) <= 19 GROUP BY HOUR ORDER BY HOUR

-- https://leetcode.com/problems/duplicate-emails
With TBL AS(
    SELECT email as Email, count(*) as count from Person group by email
    )
SELECT Email from TBL where count > 1

-- https://leetcode.com/problems/classes-more-than-5-students/submissions/
WITH TBL AS(
    SELECT class, count(class) as count FROM Courses
    GROUP BY class
    )
SELECT class FROM TBL
WHERE count >= 5