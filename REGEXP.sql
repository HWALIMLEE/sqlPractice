-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- start of string
select distinct city from station
where city REGEXP '^a' or city REGEXP '^e' or city REGEXP '^i' or city REGEXP '^o' or city REGEXP '^u'

-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- end of string
select distinct city from station
where city REGEXP 'a$' or city REGEXP 'e$' or city REGEXP 'i$' or city REGEXP 'o$' or city REGEXP 'u$'

-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- use of left, right
select distinct city from station
where left(city,1) in ('a','e','i','o','u')
and right(city, 1) in ('a','e','i','o','u')

-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
select name from students
where marks > 75
order by right(name,3), ID