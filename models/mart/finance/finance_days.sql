SELECT
    date_date AS date_date,
    COUNT(DISTINCT orders_id) AS nb_transactions,
    ROUND(SUM(operational_margin), 2) AS operational_margin, 
    ROUND(SUM(revenue), 2) AS revenue, 
    ROUND(SUM(revenue)/NULLIF(COUNT(orders_id),2), 2) AS ave_basket, 
    ROUND(SUM(purchase_cost), 2) AS purchase_cost, 
    ROUND(SUM(margin), 2) AS margin, 
    ROUND(SUM(shipping_fee), 2) AS shipping_fee,
    ROUND(SUM(logcost), 2) AS logcost, 
    ROUND(SUM(ship_cost), 2) AS ship_cost,
    ROUND(SUM(quantity), 2) AS total_quantity   
FROM {{ref('int_orders_operational')}} 
GROUP BY date_date
ORDER BY date_date DESC







