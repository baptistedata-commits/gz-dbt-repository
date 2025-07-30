 {{ config(materialized=table) }}
SELECT
date_date,
COUNT(orders_id) AS nb_transactions,
SUM(revenue) AS total_revenue,
AVG(revenue) AS average_basket,
SUM(Operational_margin) AS Operational_margin,
SUM(purchase_cost) AS total_purchase_cost,
SUM(shipping_fee) AS total_shipping_fee,
SUM(logcost) AS total_logcost,
SUM(quantity) AS total_products_sold
FROM {{ ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC
