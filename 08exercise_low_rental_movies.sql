SELECT f.title, COUNT(r.rental_id) AS total_rentals
FROM sakila.film AS f
JOIN sakila.inventory AS i 
ON f.film_id = i.film_id
JOIN sakila.rental AS r 
ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
HAVING COUNT(r.rental_id) < 5
ORDER BY total_rentals;
