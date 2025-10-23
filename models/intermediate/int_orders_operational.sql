
SELECT
    A.orders_id AS orders_id, 
    A.date_date AS date_date,
    ROUND(A.margin+B.shipping_fee-B.logcost-B.ship_cost, 2) AS operational_margin, 
    A.revenue AS revenue, 
    A.quantity AS quantity, 
    A.purchase_cost AS purchase_cost, 
    A.margin AS margin, 
    B.shipping_fee AS shipping_fee,
    B.logcost AS logcost, 
    B.ship_cost AS ship_cost    
FROM {{ref('int_orders_margin')}} AS A
LEFT JOIN {{ref('stg_raw__ship')}} AS B
ON A.orders_id = B.orders_id 
ORDER BY orders_id DESC





