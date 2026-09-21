-- Q5. Clientes assinantes gastam mais? Compare o gasto médio e a receita total entre assinantes e não assinantes.
SELECT
	subscription_status, COUNT(customer_id) as total_customers,
	ROUND(AVG(purchase_amount), 2) as avg_spend, ROUND(SUM(purchase_amount), 2) as total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC, avg_spend DESC;