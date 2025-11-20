use northwind;

select productid, productname, unitprice, categoryname, products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
order by categoryname, productname;