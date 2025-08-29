-- Show the department with the smallest headcount

SELECT 
    COUNT(*) AS dept_count,
    d.dept_id,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY dept_count ASC
LIMIT 1



-- List employees whose name starts with “A” and salary above 100000

SELECT 
    name,
    id,
    salary
FROM employee
WHERE name like 'A%'
AND salary > 100000



-- Count how many employees were hired each year

SELECT 
    COUNT(*) AS employee_count,
    EXTRACT(YEAR FROM hire_date) AS hire_year
FROM employee
GROUP BY hire_year
ORDER BY employee_count DESC
