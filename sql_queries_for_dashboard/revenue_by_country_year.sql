SELECT * 
FROM workspace.default.gold_total_revenue_country_year
WHERE `2011` IS NOT NULL AND `2010` IS NOT NULL
ORDER BY `2011` DESC
LIMIT 10
