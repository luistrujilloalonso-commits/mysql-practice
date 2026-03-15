SELECT rental_date, customer_id, i.film_id, f.title
FROM RENTAL r
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
WHERE r.return_date is null
order by f.title;
