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
find the highest salray and the number of employees who earn that 

The "obvious" solution to this problem is to use max to find the highest
salary and a subquery (that finds max again) to find the count. But, when 
searching for groups like this aliasing the math and then using GROUP BY
is the simpler solution.
*/
SELECT months * salary AS earnings, COUNT(*) AS count 
FROM employee GROUP BY earnings ORDER BY earnings DESC LIMIT 1;

/* Weather Observation Station 2
select the sum of all values in LAT_N and LONG_W and round to 2 decimal places
*/
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

/* Weather Observation Station 13
find the sum of latitudes where the value is greater than 38.7880 and 
less than 137.2345. Round to the 4th decimal place.
*/
SELECT ROUND(SUM(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345; 

/* Weather Observation Station 14
find the highest value that is less than 137.2345
*/
SELECT ROUND(MAX(LAT_N), 4) FROM STATION WHERE LAT_N < 137.2345;

/* Weather Observation Station 15
find the western longitude for the largest northern latitude
round answer to 4 decimal places
*/
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1; 

/* Weather Observation Station 16
find the smallest northern latitude that is 
greater than 38.7780 and round to the 4th decimal place
*/
SELECT ROUND(LAT_N, 4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;

/*
the point of this on and the last one is to show that you can use
odrber by and limit to find the max and min values in a column
*/

/* Weather Observation Station 17 
Query the western longitude where the smallest northern lat
is greater than 38.7780. Round to 4 decimal place.
*/
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;