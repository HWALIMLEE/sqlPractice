-- https://programmers.co.kr/learn/courses/30/lessons/59042
SELECT ANIMAL_ID, NAME FROM ANIMAL_OUTS
WHERE ANIMAL_ID not in (SELECT ANIMAL_ID FROM ANIMAL_INS) ORDER BY ANIMAL_ID

-- LEFT JOIN
SELECT A.ANIMAL_ID, A.NAME FROM ANIMAL_OUTS A 
LEFT JOIN ANIMAL_INS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL
ORDER BY B.ANIMAL_ID ASC

-- https://programmers.co.kr/learn/courses/30/lessons/59043
SELECT A.ANIMAL_ID, A.NAME FROM ANIMAL_INS A
INNER JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID 
where A.DATETIME > B.DATETIME
ORDER BY A.DATETIME

-- https://programmers.co.kr/learn/courses/30/lessons/59044
SELECT A.NAME, A.DATETIME FROM ANIMAL_INS A
LEFT JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL
ORDER BY DATETIME
LIMIT 3


-- https://leetcode.com/problems/combine-two-tables
SELECT A.firstName, A.lastName, B.city, B.state FROM Person A
LEFT JOIN Address B
ON A.personId = B.personId

-- https://leetcode.com/problems/employees-earning-more-than-their-managers
SELECT A.name as Employee FROM Employee A
LEFT JOIN Employee B
ON A.managerId = B.id
WHERE A.salary > B.salary

-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
SELECT sum(CITY.POPULATION) FROM COUNTRY
INNER JOIN CITY
ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE COUNTRY.CONTINENT='Asia'