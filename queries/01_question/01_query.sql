-- Q1. Qual é a receita total gerada por clientes do sexo masculino x feminino?
SELECT gender, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender
ORDER BY revenue DESC;