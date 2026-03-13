SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS total_rentals
FROM sakila.customer AS c
JOIN sakila.rental AS r 
ON c.customer_id = r.customer_id
GROUP BY c.customer_id
ORDER BY total_rentals DESC;
