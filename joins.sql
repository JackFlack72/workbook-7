use northwind;

/* 1. List the product id, product name, unit price and category name of all
      products. Order by category name and within that, by product name.
*/
select productid, productname, unitprice, categoryname, products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
order by categoryname, productname;

/*2. List the product id, product name, unit price and supplier name of all
products that cost more than $75. Order by product name.
*/
select productid, productname, unitprice, suppliers.companyname, products.supplierid as products_supplier_id, suppliers.supplierid as suppliers_supplier_id
from products
inner join suppliers on products.supplierid = suppliers.supplierid
where unitprice > 75
order by productname;

/*3. List the product id, product name, unit price, category name, and supplier
name of every product. Order by product name.
*/
select productid, productname, unitprice, categories.categoryname, products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
order by productname;

/*4. What is the product name(s) and categories of the most expensive
products? HINT: Find the max price in a subquery and then use that in
your more complex query that joins products with categories.
*/
select productname, unitprice, categories.categoryname, products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
where unitprice in (select max(unitprice)
					from products)
order by productname;

/*5. List the order id, ship name, ship address, and shipping company name of
every order that shipped to Germany.
*/
select shipvia as order_shipper_id, shippers.shipperid as shippers_shipper_id, shipname, shipaddress, shippers.companyname as shippers_company_name, shipcountry 
from orders
inner join shippers on orders.shipvia = shippers.shipperid
where shipcountry like "germany"
order by shipvia;

/*6. List the order id, order date, ship name, ship address of all orders that
ordered "Sasquatch Ale"?
*/
select orders.orderid, orders.orderdate, orders.shipname, orders.shipaddress, products.productname
from orders
inner join `order details` on orders.orderid = `order details`.orderid
inner join products on `order details`.productid = products.productid
where products.productname = "Sasquatch Ale";
