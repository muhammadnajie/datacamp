SELECT c1.name, 
       c1.country_code, 
       c1.city_proper_pop, 
       c1.metroarea_pop,  
       c1.city_proper_pop / c1.metroarea_pop * 100 AS city_perc
  FROM cities AS c1
  WHERE c1.metroarea_pop IS NOT NULL
  AND c1.name IN
    (SELECT capital
     FROM countries
     WHERE (continent = 'Europe' 
     OR continent LIKE '%America%'))
ORDER BY city_perc DESC
LIMIT 10;