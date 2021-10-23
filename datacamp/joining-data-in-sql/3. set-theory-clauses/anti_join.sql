-- SELECT COUNT(name) FROM countries WHERE continent = 'Oceania';

-- SELECT c1.code,
--        c1.name,
--        c2.basic_unit AS currency
-- FROM countries AS c1
-- INNER JOIN currencies AS c2
-- ON c1.code = c2.code
-- WHERE c1.continent = 'Oceania';

-- Anti-join to select all countries that have not registered the currency
SELECT code, name
	FROM countries
    WHERE continent = 'Oceania'
    AND code NOT IN 
    (SELECT code FROM currencies)