SELECT name 
FROM cities AS c1
WHERE country_code IN (
  (SELECT code FROM economies
   UNION
   SELECT code FROM currencies)
   EXCEPT
    SELECT country_code as code 
    FROM populations)