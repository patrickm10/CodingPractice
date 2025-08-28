-- Return departments with no employees

SELECT 
    d.dept_id,
    d.dept_name,
    COUNT(e.id) AS employee_count
FROM department d
LEFT JOIN employee e 
    ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.id) = 0;



-- List employees who have been with the company more than 5 years

SELECT 
    e.id,
    e.name,
    e.hire_date
FROM employee e
WHERE e.hire_date < DATE'2020-08-28'
ORDER BY e.hire_date ASC



-- Find employees who share the same hire date

SELECT 
    e.id,
    e.name,
    e.hire_date
FROM employee e
JOIN (
    SELECT hire_date
    FROM employee
    GROUP BY hire_date
    HAVING COUNT(*) > 1
) dup on e.hire_date = dup.hire_date
ORDER BY e.hire_date, e.id
