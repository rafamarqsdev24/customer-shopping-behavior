-- Q8. Quais são os 3 produtos mais comprados em cada categoria?
WITH item_counts as (
	SELECT
		category, item_purchased,
		COUNT(customer_id) as total_orders,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY COUNT(customer_id) DESC) as item_rank
	FROM customer
	GROUP BY category, item_purchased
)

SELECT item_rank, item_purchased, total_orders, category
FROM item_counts
WHERE item_rank <= 3
ORDER BY category ASC, total_orders DESC;