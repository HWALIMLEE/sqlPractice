-- https://leetcode.com/problems/rising-temperature/submissions/
SELECT B.id FROM Weather A
INNER JOIN Weather B
ON STR_TO_DATE(B.recordDate,'%Y-%m-%d') = DATE_ADD(STR_TO_DATE(A.recordDate,'%Y-%m-%d'), INTERVAL 1 DAY)
Where B.temperature > A.temperature