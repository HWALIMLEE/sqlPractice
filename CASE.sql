-- https://leetcode.com/problems/swap-salary/submissions/
UPDATE Salary
    SET sex = CASE
        WHEN sex = 'f'
        THEN 'm'
        ELSE 'f'
    END;