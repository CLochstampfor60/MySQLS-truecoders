/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select P.Name as Product, C.Name as Category
FROM products as P
Inner Join categories AS C on C.CategoryID = C.CategoryID
where C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select p.Name, p.Price, r.Rating from products as p
 Inner Join reviews as r On r.ProductID = p.ProductID
 where r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select e.FirstName, e.LastName, Sum(s.Quantity) AS Total from sales as S
Inner join employees As e On e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by Total desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.Name as 'Department Name', c.Name as 'Category' from departments as d
Inner join categories as C on c.DepartmentID = d.DepartmentID
/*where c.Name = 'Appliances and Games';*/
where c.Name ='Appliances' OR c.Name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
from products as p
Inner join sales as s on s.ProductID = p.ProductID
where p.Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select p.Name, r.Reviewer, r.Rating, r.Comment
from products as p
Inner Join reviews as r on r.ProductID = p.ProductID
where p.Name = 'Visio TV'  and r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

Select e.EmployeeID, e.FirstName, e.LastName, p.Name, SUM(s.Quantity) as TotalSold
from Sales as s
Inner Join employees as e on e.EmployeeID = s.EmployeeID
Inner join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID
ORDER BY TotalSold desc;


