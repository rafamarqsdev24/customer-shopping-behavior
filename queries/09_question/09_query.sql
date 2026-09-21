-- Q9. Clientes que realizam compras recorrentes (mais de 5 compras anteriores) também têm maior probabilidade de assinar o serviço?
SELECT subscription_status, COUNT(customer_id) as repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status
ORDER BY repeat_buyers DESC;