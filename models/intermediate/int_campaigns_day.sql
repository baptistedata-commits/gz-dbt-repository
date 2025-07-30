SELECT
date_date,
paid_source,
SUM(ads_cost) AS total_ads_cost,
SUM(impression) AS total_impression,
SUM(click) AS total_click
FROM {{ref("int_campaigns")}}
GROUP BY date_date, paid_source
ORDER BY date_date DESC
