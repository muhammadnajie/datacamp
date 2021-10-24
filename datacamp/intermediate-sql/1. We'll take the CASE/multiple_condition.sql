SELECT  c.name AS country,
        COUNT(CASE WHEN m.home_goal > m.away_goal 
                   AND m.season = '2012/2013'
                   THEN 1 END) AS matches_2012_2013,
        COUNT(CASE WHEN m.home_goal > m.away_goal 
                   AND m.season = '2013/2014'
                   THEN 1 END) AS matches_2013_2014,
        COUNT(CASE WHEN m.home_goal > m.away_goal 
                   AND m.season = '2014/2015'
                   THEN 1 END) AS matches_2014_2015
FROM match AS m
LEFT JOIN country AS c
ON c.id = m.country_id
GROUP BY c.name;