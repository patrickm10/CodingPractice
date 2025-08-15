-- Pull employees with salary greater than their department average
SELECT e.id, e.name, e.salary, d.dept_name,
AVG(e.salary) OVER (PARTITION BY e.dept_id) AS avg_dept_salary
FROM employee e
JOIN department d on e.dept_id=d.dept_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.dept_id = e.dept_id
)
ORDER BY d.dept_name, e.salary DESC;

-- List top 5 highest paid employees with department name
SELECT e.name, e.salary, d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
ORDER BY e.salary DESC
LIMIT 5

-- List all employees hired on or after January 1, 2022, along with their department name, ordered by hire date ascending.
SELECT e.id, e.name, e.salary, d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.hire_date >= '2022-01-01'

-- Show each department name and the total number of employees in it.
SELECT d.dept_name,
COUNT(e.name) AS total_employees
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name
ORDER BY total_employees DESC
