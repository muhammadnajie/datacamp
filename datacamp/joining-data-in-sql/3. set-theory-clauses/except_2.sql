SELECT capital FROM countries
EXCEPT
SELECT name as capital FROM cities
ORDER BY capital;