-- List departments with no employees (left join anti pattern)

SELECT
    d.dept_id,
    d.dept_name
FROM department d
LEFT JOIN employee e ON d.dept_id=e.dept_id
WHERE e.dept_id IS NULL;



-- Return max salary per department and employee(s) who earn it

SELECT 
    d.dept_name,
    e.name AS employee_name,
    e.salary AS max_dept_salary
FROM department d
JOIN employee e 
    ON d.dept_id = e.dept_id
JOIN (
    SELECT dept_id, MAX(salary) AS max_salary
    FROM employee
    GROUP BY dept_id
) m
    ON e.dept_id = m.dept_id
   AND e.salary = m.max_salary
ORDER BY d.dept_name, e.name;



-- Employees whose salary equals the company median

SELECT
    e.id,
    e.name,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE e.salary = (
    SELECT MEDIAN(salary) FROM employee
)
