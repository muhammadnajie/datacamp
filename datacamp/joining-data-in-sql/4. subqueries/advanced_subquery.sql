SELECT countries.continent,
       (SELECT MAX(inflation_rate)
        FROM economies
        WHERE year = 2015
        AND countries.code = economies.code)
FROM countries,
     (SELECT DISTINCT continent FROM countries) AS continents
WHERE countries.continent = continents.continent;