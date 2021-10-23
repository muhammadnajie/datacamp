SELECT code, year, income_group, gross_savings FROM economies2010
UNION
SELECT code, year, income_group, gross_savings FROM economies2015
ORDER BY code, year;