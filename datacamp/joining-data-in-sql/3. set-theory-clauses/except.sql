-- select all cities that are not the capital of the country
SELECT name FROM cities
EXCEPT
SELECT capital as name FROM countries
ORDER BY name;