-- Q3. Quais são os 5 produtos com a maior média de avaliação?
SELECT item_purchased, ROUND(AVG(review_rating::numeric), 2) as avg_product_rating 
FROM customer
GROUP BY item_purchased
ORDER BY avg_product_rating DESC
LIMIT 5;