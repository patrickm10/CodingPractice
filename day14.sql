-- Identify departments where every employee earns above the company average

SELECT 
    d.dept_name,
    d.dept_id
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING MIN(e.salary) >
(SELECT AVG(salary) FROM employee)



-- Show the cumulative payroll cost of employees ordered by salary descending

SELECT 
    name,
    salary,
    SUM(salary) OVER(
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_payroll
FROM employee
ORDER BY salary DESC



-- Return the department that has the highest percentage of employees earning above 120000

SELECT 
    d.dept_name,
    ROUND(
        100.0 * SUM(CASE WHEN e.salary > 120000 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS pct_above_120k
FROM department d
JOIN employee e ON d.dept_id=d.dept_id
GROUP BY d.dept_name
ORDER BY pct_above_120k DESC
LIMIT 1
