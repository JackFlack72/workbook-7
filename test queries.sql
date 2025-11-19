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

select customer_id, first_name, last_name, customer.address_id as customer_address_id, address.address_id as address_address_id, address, postal_code, city_id
from customer
inner join address on customer.address_id = address.address_id;

-- question 1 from joins exercise
use northwind;

select productid, productname, unitprice, categoryname, products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
order by categoryname, productname;