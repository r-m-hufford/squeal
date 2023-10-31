/* Population Census
Given the CITY and COUNTRY tables, query the sum of the populations of 
all cities where the CONTINENT is 'Asia'.

The point of this exercise is to introduce the concept of inner joins.
Inner joins combine records from two tables whenever there are matching
values in a commmon field.
*/
SELECT SUM(CITY.POPULATION) FROM CITY
INNER JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';

/* African cities
Given the CITY and COUNTRY tables, query the names of all cities where
the CONTINENT is 'Africa'.

The point of this exercise is to introduce the concept of left joins.
Left joins return all records from the left table, and the matched redords
from the right table.
*/
SELECT CITY.NAME FROM CITY
LEFT JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';

/* Average Population of Each Continent
Given the CITY and COUNTRY tables, query the name of the continents
and their respective average city populations. Round the average population
*/
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM CITY
INNER JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
/* An inner Join is used to combine the records of the city and county
table. The task is to combine records, not show records from one table and
show the related records from another table. Therefore, an inner join is
used. 
The other thing going on is the GROUP BY. GROUP BY (on the non grouped fields)
is required whenever aggregate functions are used. AVG aggregates all the 
city.population values. Querying the country.continent aggregates nothing.
The result is an ambigbuous query. GROUP BY eliminates this issue.
*/