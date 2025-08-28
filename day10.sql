-- List employees who earn more than the company average salary

SELECT 
    e.id,
    e.name,
    e.salary
FROM employee e
WHERE e.salary > 
(SELECT AVG(salary) FROM employee)



-- Show the top 3 departments with the highest average salary

SELECT 
    d.dept_name,
    AVG(e.salary) AS dept_salary,
    (SELECT AVG(salary) FROM employee) AS company_avg
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name
ORDER BY dept_salary DESC
LIMIT 3



-- Find employees whose salary is equal to the maximum salary in their department

SELECT 
    e.id,
    e.name,
    e.salary,
    d.dept_name,
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary) FROM employee e2
    WHERE e2.dept_id= e.dept_id
)

