-- List all employees earning above 100000

SELECT 
    e.name,
    e.id,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.salary > 100000
ORDER BY d.dept_name



-- Compute company avg salary and return employees above it

SELECT 
    e.id,
    e.name,
    e.salary,
FROM employee e
WHERE e.salary > (
    SELECT AVG(e2.salary) FROM employee e2
)



-- List employees earning above both dept avg and company avg

SELECT 
    e.id,
    e.name,
    e.salary,
FROM employee e
WHERE e.salary > (
    SELECT AVG(e2.salary) FROM employee e2
)
AND e.salary > (
    SELECT AVG(e3.salary)
    FROM employee e3
    WHERE e3.dept_id = e.dept_id
)
