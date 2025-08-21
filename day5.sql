-- Count how many employees are in each department.

SELECT
    d.dept_name,
    COUNT(*) AS dept_employees
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name


  
-- Find the employee(s) with the earliest hire date.
  
SELECT
    id,
    name,
    hire_date
FROM employee
WHERE hire_date = (SELECT MIN(hire_date) FROM employee)

-- List employees in each department ordered by salary descending.

SELECT
    e.name,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
ORDER BY d.dept_name, e.salary DESC;


-- Show each employee’s name and salary, grouped together by department, 
-- and order the results by department name.

SELECT
    e.name,
    e.salary,
    d.dept_name
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
ORDER BY d.dept_name



-- For each department, show the department name and the highest paid employee(s). 
-- If multiple employees tie for the top salary in a department, include them all.
WITH max_sal AS(
    SELECT dept_id, MAX(salary) AS max_salary
    FROM employee
    GROUP BY dept_id
)
SELECT 
    d.dept_name,
    e.name,
    e.salary
FROM max_sal m
JOIN employee e
ON e.dept_id=m.dept_id
AND e.salary = m.max_salary
JOIN department d
ON d.dept_id=m.dept_id
ORDER BY d.dept_name, e.name;



