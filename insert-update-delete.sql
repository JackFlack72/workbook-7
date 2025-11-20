use northwind;

/* 1. Add a new supplier. */
select *
from suppliers;

insert into suppliers
values(30, "Lucas Co.", "Lucas Rappatta", "CEO", "1234 My St.", "Lucasville", "Lucas" , "99999", "Lucasopia", "(999) 999-9999", "(999) 999-9999", "Lucas (on the World Wide Web)#http://www.lucas.gov");

/* 2. Add a new product provided by that supplier */
select *
from products;

insert into products
values(78, "Lucaso's", 30, 1, "10000 boxes", 999.99, 9999, 5000, 100, 0);

/* 3. List all products and their suppliers. */
select *
from products
inner join suppliers on suppliers.supplierid = products.supplierid;

/* 4. Raise the price of your new product by 15%. */
select *
from products;

set SQL_SAFE_UPDATES = 0;
UPDATE products
SET unitprice = 99.99
WHERE supplierid = 30;
set SQL_SAFE_UPDATES = 1;
 
set SQL_SAFE_UPDATES = 0;
UPDATE products
SET unitprice = unitprice * 1.15
WHERE supplierid = 30;
set SQL_SAFE_UPDATES = 1;

/* 5. List the products and prices of all products from that supplier. */
select *
from products;

select *
from suppliers;

select productname, unitprice
from products
inner join suppliers on suppliers.supplierid = products.supplierid
where productname = "Lucaso's";

/* 6. Delete the new product. */
select *
from products;

delete from products
where supplierid = 30;

/* 7. Delete the new supplier. */
select *
from suppliers;

delete from suppliers
where supplierid = 30;

/* 8. List all products. */
select *
from products;

/* 9. List all suppliers. */
select *
from suppliers;
