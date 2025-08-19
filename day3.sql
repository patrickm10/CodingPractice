-- Second highest salary overall without LIMIT

SELECT 
    name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (SELECT MAX(salary) FROM employee)
);



-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

SELECT 
    product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y'


    
-- Find the names of the customer that are either:
-- referred by any customer with id != 2.
-- not referred by any customer.

SELECT name
FROM Customer
WHERE  referee_id !=2
OR referee_id IS NULL


    
-- A country is big if:
-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000).
-- Write a solution to find the name, population, and area of the big countries.

SELECT name,
    population,
    area
FROM World
WHERE population >= 25000000
OR area >= 3000000


-- Write a solution to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;


-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

SELECT eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id=eu.id



-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
SELECT 
    p.product_name,
    s.year,
    s.price
FROM Sales s
JOIN Product p ON p.product_id=s.product_id

-- 


