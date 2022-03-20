-- https://leetcode.com/problems/swap-salary/submissions/
UPDATE Salary
    SET sex = CASE
        WHEN sex = 'f'
        THEN 'm'
        ELSE 'f'
    END;

-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
select case
    when A + B > C AND B + C >A AND A + C > B THEN
        CASE
            WHEN A=B AND B=C THEN 'Equilateral'
            WHEN A=B OR B=C OR C=A THEN 'Isosceles'
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
END
FROM TRIANGLES;