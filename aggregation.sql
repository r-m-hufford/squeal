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
SELECT ROUND(AVG(population), 0) FROM CITY;

