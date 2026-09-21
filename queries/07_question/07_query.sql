-- Q7. Segmente os clientes em Novos, Recorrentes e Fiéis com base no número total de compras anteriores e exiba a contagem de cada segmento.
WITH customer_type AS (
    SELECT 
        customer_id, 
        previous_purchases,
        CASE
            WHEN previous_purchases = 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)

SELECT customer_segment, count(*) as number_customers
FROM customer_type
GROUP BY customer_segment;