-- 1/2
-- SELECT code, COUNT(name) AS lang_num
-- FROM languages
-- GROUP BY code
-- ORDER BY lang_num DESC;

-- 2/2
SELECT countries.local_name, subquery.lang_num
FROM countries,
  (SELECT code, COUNT(name) AS lang_num
  FROM languages
  GROUP BY code) AS subquery
WHERE countries.code = subquery.code
ORDER BY lang_num DESC;