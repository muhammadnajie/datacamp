SELECT country_code FROM cities
UNION
SELECT code as country_code FROM currencies
ORDER BY country_code