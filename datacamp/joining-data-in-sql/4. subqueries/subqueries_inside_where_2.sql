SELECT name, country_code, urbanarea_pop
FROM cities
WHERE name IN (
        SELECT DISTINCT capital FROM countries)
ORDER BY urbanarea_pop DESC;