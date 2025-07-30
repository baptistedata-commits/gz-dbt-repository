SELECT
date_date,
ROUND(SUM((Operational_margin-total_ads_cost)),2) AS ads_margin,
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(Operational_margin),2) AS Operational_margin,
ROUND(SUM(total_ads_cost),2) AS ads_cost,
ROUND(SUM(total_impression),2) AS impression,
ROUND(SUM(total_click),2) AS click,
ROUND(SUM(total_products_sold),2) AS product_sold,
ROUND(SUM(total_revenue),2) AS revenue,
ROUND(SUM(total_purchase_cost),2) AS purchase_cost,
ROUND(SUM(total_shipping_fee),2) AS shipping_fee,
ROUND(SUM(total_logcost),2) AS logcost
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}} USING (date_date)
GROUP BY date_date
ORDER BY date_date DESC
