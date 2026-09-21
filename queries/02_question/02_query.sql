-- Q2. Quais clientes utilizaram desconto, mas ainda assim gastaram acima do valor médio de compra?
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount) FROM customer);