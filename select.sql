
/* revising select query 1
select where population gt 100000 and in usa */
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

/* revising select query 2
select name population gt 120000 and in usa */
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

/* Select All
select everything from city table */
SELECT * FROM CITY;

/* Select by id
select by id */
SELECT * FROM city where id = 1661;

/* Japanese Cities' Attributes
select where city in japan */
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

/* Japanese Cities' Names
select name where in japan */
SELECT name FROM CITY WHERE COUNTRYCODE = 'JPN';

/* Weather Observation Station 1
select city and state from station table */
SELECT CITY, STATE FROM STATION;

/* Weather Observation Station 3 
select distinct cities from station where id is even */
SELECT DISTINCT CITY FROM STATION WHERE mod(id, 2) = 0;

/* Weather Observation Station 4
find difference between total cities and distinct cities */
SELECT (count(city) - count(DISTINCT city)) from station;

/* Weather Observation Station 5
find shortest and longest cities, return name and count,
sort alphabetically, return only first result
*/
SELECT CITY, LENGTH(city) from station WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(city)) FROM station) ORDER BY CITY LIMIT 1;
SELECT CITY, LENGTH(city) from station WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(city)) FROM station) ORDER BY CITY LIMIT 1;

/* Weather Observation Station 6
select where first letter vowel */
SELECT CITY FROM STATION 
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

/* Weather Observation Station 7
select distinct where last letter vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

/* Weather Observation Station 8
select distinct where first and last letter vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) in ('a', 'e', 'i', 'o', 'u') 
AND RIGHT(CITY, 1) in ('a', 'e', 'i', 'o', 'u');

/* Weather Observation Station 9
select distinct where first letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/* Weather Observation Station 10
select distinct where last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/* Weather Observation Station 11
select distinct where first or last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE 
  LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
OR
  RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/* Weather Observation Station 12
select distinct where first and last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE 
  LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
AND
  RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/* select and sort by name */
SELECT NAME FROM EMPLOYEE ORDER BY NAME;

/* Employees Names
select employees where salary > 2000 and employment
longer than 10 months order by asc id#
 */
SELECT name FROM employee
WHERE salary > 2000
 AND
months < 10
ORDER BY employee_id;

/* Emplopyee Salaries
find the difference between the most and least populace cities */
SELECT (max(population) - min(population)) from CITY;

/* Higher Than 75 Marks
find students with grades higher than 75
order by last 3 letters in first name. Order by id
where there are duplicates
*/
SELECT name FROM students where marks > 75 order by right(name, 3), id;

/* Type of Triangle
Write a query identifying the type of triangle
of each record in the table
*/
SELECT
  CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN "Not A Triangle"
    WHEN A=B AND A=C THEN "Equilateral"
    WHEN A=B or A=C or B=C THEN "Isosceles"
    ELSE 'Scalene'
  END
FROM TRIANGLES;