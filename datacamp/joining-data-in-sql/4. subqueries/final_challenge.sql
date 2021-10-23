SELECT DISTINCT name, economies.total_investment, economies.imports
  FROM countries
    LEFT JOIN economies
      ON (countries.code = economies.code AND 
          countries.code IN (SELECT code 
                             FROM languages
                             WHERE official IS TRUE))
WHERE economies.year = 2015
AND region = 'Central America'
ORDER BY name;