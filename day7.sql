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

