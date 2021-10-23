SELECT c.region, c.continent, AVG(p.fertility_rate) AS avg_fert_rate
  FROM populations AS p
    INNER JOIN countries AS c
      ON p.country_code = c.code
  WHERE p.year = 2015
GROUP BY c.continent, c.region
ORDER BY avg_fert_rate;