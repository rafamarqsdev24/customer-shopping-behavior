-- Q6. Quais são os 5 produtos que apresentam a maior porcentagem de compras com descontos aplicados?
SELECT item_purchased, ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;
