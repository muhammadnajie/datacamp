-- 1/3
-- SELECT countries.name, countries.continent, economies.inflation_rate
-- FROM countries
-- INNER JOIN economies
-- USING(code)
-- WHERE year = 2015;

-- 2/3
-- SELECT MAX(inflation_rate) AS max_inf
--   FROM (
--       SELECT name, continent, inflation_rate
--       FROM countries
--       INNER JOIN economies
--       USING (code)
--       WHERE year = 2015) AS subquery
-- GROUP BY continent;

-- 3/3
SELECT name, continent, inflation_rate
    FROM countries
    INNER JOIN economies
    ON countries.code = economies.code
    WHERE year = 2015
      AND inflation_rate IN (
          SELECT MAX(inflation_rate) AS max_inf
          FROM (
              SELECT name, continent, inflation_rate
              FROM countries
              INNER JOIN economies
              ON countries.code = economies.code
              WHERE year = 2015) AS subquery
          GROUP BY continent);

