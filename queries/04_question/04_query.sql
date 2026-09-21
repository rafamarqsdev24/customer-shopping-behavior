-- Q4. Compare os valores médios de compra entre as modalidades de envio Padrão e Expresso.
SELECT shipping_type, ROUND(AVG(purchase_amount), 2) as avg_price
FROM customer
WHERE shipping_type in ('Standard', 'Express')
GROUP BY shipping_type
ORDER BY avg_price DESC;