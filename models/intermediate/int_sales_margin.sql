
SELECT 
    A.date_date,
    A.orders_id,
    A. products_id,
    A.revenue,
    A.quantity,
    B.purchase_price * A.quantity AS purchase_cost,
    ROUND(A.revenue-(B.purchase_price * A.quantity),2) AS margin
FROM {{ref('stg_raw__sales')}} AS A
LEFT JOIN {{ref('stg_raw__product')}} AS B 
ON A.products_id = B.products_id

