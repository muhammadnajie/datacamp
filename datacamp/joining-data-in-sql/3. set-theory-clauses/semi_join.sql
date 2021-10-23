-- 1. SELECT code FROM countries WHERE region = 'Middle East';
-- 2. SELECT DISTINCT name FROM languages ORDER BY name;

SELECT DISTINCT name 
    FROM languages 
WHERE code IN
    (SELECT code 
     FROM countries 
     WHERE region = 'Middle East')
ORDER BY name;