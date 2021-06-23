SELECT country,
  AVG(amount)
FROM customer
  INNER JOIN address ON address.address_id = customer.address_id
  INNER JOIN city ON address.city_id = city.city_id
  INNER JOIN country ON country.country_id = city.country_id
  INNER JOIN rental ON rental.customer_id = customer.customer_id
  INNER JOIN payment ON rental.customer_id = rental.customer_id
GROUP BY country
ORDER BY AVG DESC
LIMIT 10