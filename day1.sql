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
