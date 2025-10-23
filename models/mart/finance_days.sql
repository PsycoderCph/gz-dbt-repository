SELECT  
    A.date_date,
    COUNT(A.orders_id) AS nb_transactions, 
    ROUND(SUM(A.revenue), 2) AS daily_revenue, 
    ROUND(AVG(A.quantity), 2) AS ave_basket, 
    ROUND(SUM(B.operational_margin), 2) AS operational_margin,
    SUM((A.purchase_cost), 2) AS total_purchase_cost, 
    SUM(B.shipping_fee) AS total_shipping_fee    
FROM {{ref('int_orders_margin')}} AS A
LEFT JOIN {{ref('int_orders_operational')}} AS B
ON A.orders_id = B.orders_id
GROUP BY date_date
ORDER BY date_date DESC







