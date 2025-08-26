-- List depts with avg salary greater than overall avg salary

SELECT
    d.dept_name,
    AVG(e.salary) AS avg_dept_salary
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING AVG(e.salary) > (
    SELECT AVG(salary) FROM employee
)
ORDER BY avg_dept_salary DESC;



-- Find depts whose total payroll exceeds 5,000,000

SELECT
    d.dept_name,
    SUM(e.salary) AS total_payroll
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name, d.dept_id
HAVING total_payroll > 500000



-- Employees with salary greater than 150,000 in Engineering or Finance

SELECT
    e.id,
    e.name,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE (d.dept_name = 'Finance' OR d.dept_name = 'Engineering')
AND salary > 130000



-- For each department, show the average salary only for employees with more than 5 years of experience (yoe > 5).
SELECT
    d.dept_name,
    COUNT(*) AS dept_employees,
    AVG(e.salary) as dept_salary,
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
WHERE e.yoe > 5
GROUP BY d.dept_id, d.dept_name
