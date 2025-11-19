use northwind;
# 1. What is the name of the table that holds the items Northwind sells?
# 2. Write a query to list the product id, product name, and unit price of every product.
select ProductID, productname, unitprice 
from products;

# 3. Write a query to list the product id, product name, and unit price of every product.
#    Except this time, order then in ascending order by price.
select productid, productname, unitprice 
from products
order by unitprice asc;

# 4. What are the products that we carry where the unit price is $7.50 or less?
select productid, productname, unitprice 
from products
where unitprice < 7.50;

# 5. What are the products that we carry where we have at least 100 units on hand? 
#    Order them in descending order by price.
select productname, UnitsInStock, unitprice 
from products
where UnitsInStock >= 100
order by UnitPrice desc;

# 6. What are the products that we carry where we have at least 100 units on hand? 
#    Order them in descending order by price. 
#    If two or more have the same price, list those in ascending order by product name.
select productname, UnitsInStock, unitprice 
from products
where UnitsInStock >= 100  
order by UnitPrice desc, ProductName;


# 7. What are the products that we carry where we have no units on hand, 
#    but 1 or more units of them on backorder? 
#    Order them by product name.
select productname, UnitsInStock, UnitsOnOrder, unitprice 
from products
where UnitsInStock = 0 and UnitsOnOrder >= 1 
order by ProductName;

# 8. What is the name of the table that holds the types (categories) of the items Northwind sells?

# 9. Write a query that lists all of the columns and all the rows of the categories table? 
#    What is the category id of seafood?
select *
from categories;
#    The Category ID is 8

# 10. Examine the Products table. How does it identify the type (category) of each item sold? 
#     Write a query to list all of the seafood items we carry.
select productname
from products
where CategoryID = 8;

# 11. What are the first and last names of all of the Northwind employees?
select firstname, lastname
from employees;

# 12. What employees have "manager" in their titles?
select title, firstname, lastname
from employees
where title like '%manager%';

# 13. List the distinct job titles in employees.
select title
from employees;

# 14. What employees have a salary that is between $200 0 and $2500?
select firstname, lastname, title, salary
from employees
where salary between 2000 and 2500;

# 15. List all the information about all of Northwind's suppliers.
select *
from suppliers;

# 16. Examine the Products table. How do you know what supplier supplies each product?
#     Write a query to list all the items that "Tokyo Traders" supplies to Northwind.
select *
from products
