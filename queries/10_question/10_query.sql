-- Q10. Qual é a contribuição de cada faixa etária para a receita?
SELECT age_group, SUM(purchase_amount) as total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;