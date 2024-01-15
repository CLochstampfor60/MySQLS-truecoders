-- Using the bestbuy database: Copy the SQL Comments below and paste them into your MySql Workbench.
-- find all products
Select * From bestbuy.products;

-- find all products that cost $1400
Select * from bestbuy.products
where products.Price = 1400.00;

-- find all products that cost $11.99 or $13.99
Select * from bestbuy.products as p
where p.Price = 11.99 or 13.99;

-- find all products that do NOT cost 11.99 - using NOT
Select * from bestbuy.products as p
where NOT p.Price = 11.99;

-- find all products and sort them by price from greatest to least
Select * from bestbuy.products as p
Order By p.Price desc;

-- find all employees who don't have a middle initial
Select * from bestbuy.employees
Where MiddleInitial = null;

-- find distinct product prices
Select Distinct bestbuy.products.price as t
From t.products;

-- find all employees whose first name starts with the letter ‘j’
Select * from bestbuy.employees
Where FirstName LIKE 'j%';

-- find all Macbooks
Select * from bestbuy.Products
Where Name = "Macbook";

-- find all products that are on sale
Select * from bestbuy.Products
Where OnSale = 1;

-- find the average price of all products
Select AVG(products.price) from bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
-- Select * From Employees("Title.Geek Squad")
-- Where MiddleInitial = Null;

Select * FROM bestbuy.employees as e
where e.MiddleInitial = Null AND e.title ="Geek Squad";


-- find all products from the products table whose stock level is in the range -- of 500 to 1200. 
-- Order by Price from least to greatest. Hint: Use the between keyword
Select * From bestbuy.Products
Where StockLevel Between 500 and 1200
Order By Price;





