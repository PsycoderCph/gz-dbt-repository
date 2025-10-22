
SELECT
    A.orders_id, 
    A.date_date,
    ROUND(A.margin+B.shipping_fee-B.logcost-B.ship_cost, 2) AS operational_margin, 
FROM {{ref('int_orders_margin')}} AS A
LEFT JOIN {{ref('stg_raw__ship')}} AS B
ON A.orders_id = B.orders_id 
ORDER BY orders_id DESC





