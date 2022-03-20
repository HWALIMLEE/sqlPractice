-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- 바로 distinct 사용해서 문제 풀 수 있음..
select (count(city)-count(distinct city)) from station

-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- select 여러 번 사용가능
select city, length(city)
from station
order by length(city), city
LIMIT 1;

select city, length(city)
from station
order by length(city) DESC, city
LIMIT 1;

-- 결과
-- Amo 3
-- Marine On Saint Croix 21