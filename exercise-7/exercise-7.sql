-- customer ranking by total film time watched
-- similar to exercise 6
SELECT email,
  RANK() OVER (
    ORDER BY SUM(length) DESC
  )
FROM customer
  INNER JOIN rental ON customer.customer_id = rental.customer_id
  INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
  INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY email