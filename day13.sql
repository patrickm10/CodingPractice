-- Find the difference between the highest and lowest salary in each department

SELECT 
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary,
    MAX(e.salary) - MIN(e.salary) AS salary_difference,
    d.dept_id,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY d.dept_name



-- Show employees who earn the exact median salary of their department

SELECT 
    e.name,
    e.id,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.salary = (
    SELECT MEDIAN(salary) FROM employee e2
    WHERE e2.dept_id=e.dept_id
    )



-- List all employees along with the rank of their salary within their department
    
SELECT 
    e.name,
    e.salary,
    d.dept_name,
    RANK() OVER (PARTITION BY d.dept_id ORDER BY e.salary DESC) AS salary_rank
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
ORDER BY d.dept_name
