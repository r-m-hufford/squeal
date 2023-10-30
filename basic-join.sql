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