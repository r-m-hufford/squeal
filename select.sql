/* select where population gt 100000 and in usa */
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

/* select name population gt 120000 and in usa */
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

/* select everything from city table */
SELECT * FROM CITY;

/* select by id */
SELECT * FROM city where id = 1661;

/* select where city in japan */
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

/* select name where in japan */
SELECT name FROM CITY WHERE COUNTRYCODE = 'JPN';

/* select city and state from station table */
SELECT CITY, STATE FROM STATION;

/* select distinct cities from station where id is even */
SELECT DISTINCT CITY FROM STATION WHERE mod(id, 2) = 0;

/* find difference between total cities and distinct cities */
SELECT (count(city) - count(DISTINCT city)) from station;

/* 
find shortest and longest cities, return name and count,
sort alphabetically, return only first result
*/
SELECT CITY, LENGTH(city) from station WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(city)) FROM station) ORDER BY CITY LIMIT 1;
SELECT CITY, LENGTH(city) from station WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(city)) FROM station) ORDER BY CITY LIMIT 1;

/* select where first letter vowel */
SELECT CITY FROM STATION 
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

/* select distinct where last letter vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

/* select distinct where first and last letter vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) in ('a', 'e', 'i', 'o', 'u') 
AND RIGHT(CITY, 1) in ('a', 'e', 'i', 'o', 'u');

/* select distinct where first letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/* select distinct where last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/* select distinct where first or last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE 
  LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
OR
  RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/* select distinct where first and last letter not vowel */
SELECT DISTINCT CITY FROM STATION 
WHERE 
  LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
AND
  RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/* select and sort by name */
SELECT NAME FROM EMPLOYEE ORDER BY NAME;

/* 
select employees where salary > 2000 and employment
longer than 10 months order by asc id#
 */
SELECT name FROM employee
WHERE salary > 2000
 AND
months < 10
ORDER BY employee_id;

/* find the difference between the most and least populace cities */
SELECT (max(population) - min(population)) from CITY;