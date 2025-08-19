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
