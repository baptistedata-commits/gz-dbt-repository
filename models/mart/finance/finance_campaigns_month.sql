WITH sub1 AS(

SELECT
DATE_TRUNC(date_date, month) AS date_month,
ROUND(SUM(ads_margin),2) AS ads_margin,
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(Operational_margin),2) AS Operational_margin,
ROUND(SUM(ads_cost),2) AS ads_cost,
ROUND(SUM(impression),2) AS impression,
ROUND(SUM(click),2) AS click,
ROUND(SUM(product_sold),2) AS product_sold,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(logcost),2) AS logcost
FROM {{ref("finance_campaigns_day")}}
GROUP BY date_month
)

SELECT *
FROM sub1