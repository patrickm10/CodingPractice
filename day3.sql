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


--
