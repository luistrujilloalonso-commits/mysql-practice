SELECT c.first_name, c.last_name
from sakila.customer as c
join sakila.rental as r
on c.customer_id = r.customer_id
where date (r.rental_date) = '2005-07-26';
