-- https://programmers.co.kr/learn/courses/30/lessons/59046
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS WHERE NAME IN ("Lucy","Ella","Pickle","Rogan","Sabrina","Mitty")

-- https://programmers.co.kr/learn/courses/30/lessons/59047
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS WHERE NAME LIKE "%el%" and ANIMAL_TYPE='DOG' ORDER BY NAME