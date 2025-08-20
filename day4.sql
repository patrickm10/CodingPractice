-- List all employees and their department names.

SELECT 
    e.id,
    e.name,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
ORDER BY d.dept_name


-- Find the highest salary in the whole company.
  
SELECT
    id,
    name,
    salary
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee)


-- Show employees who earn more than 70k.
  
SELECT
    id,
    name,
    salary
FROM employee
WHERE salary > 70000

-- Show each employee’s name along with their department name, 
-- but only for employees earning more than 70k.

SELECT
    e.id,
    e.name,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.salary > 70000
ORDER BY d.dept_name

-- For each department with a budget greater than 1,000,000, 
-- show the department name and the average salary of its employees.

SELECT
    d.dept_name,
    AVG(salary) AS avg_salary
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.budget, d.dept_name
HAVING d.budget > 1000000
ORDER BY avg_salary DESC;
