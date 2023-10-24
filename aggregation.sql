/* Revising Aggregations - count
query number of cities where population is greater than 100000
*/
SELECT COUNT(population) FROM CITY WHERE population > 100000; 

/* Revising Aggregations - sum
query the total population for all californian cities
*/
SELECT SUM(population) FROM CITY WHERE district = 'California';

/* Revising Aggregations - average
query the average population of all californian cities
*/
SELECT SUM(population) FROM CITY WHERE district = 'California';

/* Average Population
query the average popultion and round to the nearest int
*/
SELECT ROUND(AVG(population), 0) FROM CITY;

/* Japan Population
Query the total population of all Japanese cities
*/
SELECT SUM(population) FROM CITY WHERE countrycode = 'JPN';

/* The Blunder
Write a query calculating the amount of error (i.e.:  average monthly salaries), 
and round it up to the next integer.
*/
SELECT CEILING(AVG(salary) - AVG(REPLACE(salary, 0, ''))) FROM employees;

/* Top Earners

*/