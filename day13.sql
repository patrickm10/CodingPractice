-- Find the difference between the highest and lowest salary in each department

SELECT 
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary,
    d.dept_id,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY d.dept_name
