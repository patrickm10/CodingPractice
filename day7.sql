-- Count employees per location.

SELECT
    COUNT(*) AS employee_count,
    d.location
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.location
ORDER BY employee_count DESC;



-- For each department, show the minimum and maximum salary.

SELECT
    d.dept_name,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_id, d.dept_name

-- Find employees hired after 2020.

SELECT
    id,
    name,
    hire_date
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) > 2020



-- Show the top 3 highest paid employees in the company.
    
SELECT
    id,
    name,
    salary
FROM employee
ORDER BY salary DESC
LIMIT 3



-- Find the total salary cost (sum) per department.

SELECT
    d.dept_name,
    SUM(e.salary) AS dept_salary_cost
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id,d.dept_name
ORDER BY dept_salary_cost DESC



-- List departments with fewer than 3 employees.

SELECT
    d.dept_id,
    d.dept_name,
    COUNT(*) AS dept_employees
FROM department d
JOIN employee e ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(*) > 3
ORDER BY d.dept_id;
