-- Count employees per department

SELECT
    d.dept_id,
    d.dept_name,
    COUNT(e.id) AS total_dept_employees
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY total_dept_employees DESC



-- Return dept_name with headcount, avg salary, min, max salary

SELECT
    d.dept_name,
    COUNT(e.id) AS head_count,
    ROUND(AVG(e.salary),2) AS avg_salary,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC



-- Add total payroll per dept and percent of company payroll

SELECT
    d.dept_name,
    SUM(e.salary) AS payroll,
    (SELECT SUM(e2.salary) AS company_payroll FROM employee e2) AS company_payroll,
    (payroll / company_payroll) AS pct_dept_payroll
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name
