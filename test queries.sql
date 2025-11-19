use sakila;


select film_id, title, rating
from film
where title like "%jedi%";


select film_id, title, replacement_cost
from film
where replacement_cost = (select max(replacement_cost)
						  from film)
order by film_id;


select title, length
from film
where film_id in (select film_id
				  from film_text
				  where description like "%documentary%");


select customer_id, first_name, last_name, customer.address_id as customer_address_id, address.address_id as address_address_id, address, postal_code, city_id
from customer
inner join address on customer.address_id = address.address_id;

