-- Using the bestbuy database: Copy the SQL Comments below and paste them into your MySql Workbench.
-- find all products
Select * From Products;

-- find all products that cost $1400
Select * from Products
where Price = 1400;

-- find all products that cost $11.99 or $13.99
Select * from Products
where Price = 11.99 or 13.99;

-- find all products that do NOT cost 11.99 - using NOT
Select * from Products
where NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
Select * from Products
Order By Price desc;

-- find all employees who don't have a middle initial
Select * from Employees
Where MiddleInitial = null;

-- find distinct product prices
Select Distinct Price
From Products;

-- find all employees whose first name starts with the letter ‘j’
Select * from Employees
Where FirstName LIKE 'j%';

-- find all Macbooks
Select * from Products
Where Name = "Macbooks";

-- find all products that are on sale
Select * from Products
Where OnSale;

-- find the average price of all products
Select AVG(Price) from Products;

-- find all Geek Squad employees who don't have a middle initial
-- Select * From Employees("Title.Geek Squad")
-- Where MiddleInitial = Null;

Select Title.GeekSquad
from Employees
where MiddleInitial = Null;


-- find all products from the products table whose stock level is in the range -- of 500 to 1200. 
-- Order by Price from least to greatest. Hint: Use the between keyword
Select * From Products
Where StockLevel Between 500 and 1200
Order By Price desc;





