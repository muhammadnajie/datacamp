SELECT country_code code, year FROM populations
UNION ALL
SELECT code, year FROM economies
ORDER BY code, year;