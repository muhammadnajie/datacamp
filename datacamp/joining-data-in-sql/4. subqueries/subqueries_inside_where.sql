-- Select average life_expectancy
-- SELECT AVG(life_expectancy)
--   -- From populations
--   FROM populations
-- -- Where year is 2015
-- WHERE year = '2015';

SELECT *
  FROM populations
WHERE life_expectancy > 1.15 * (
        SELECT AVG(life_expectancy) 
        FROM populations 
        WHERE year = 2015) 
AND year = 2015;