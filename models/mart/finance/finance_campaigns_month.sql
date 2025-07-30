SELECT
DATETRUNC(month, date_date) AS date_month,
FROM {{ref("finance_campaigns_day")}}

