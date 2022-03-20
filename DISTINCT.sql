-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- 바로 distinct 사용해서 문제 풀 수 있음..
select (count(city)-count(distinct city)) from station