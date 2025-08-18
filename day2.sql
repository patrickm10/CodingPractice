-- Sales department employees ordered by salary desc then name asc	

SELECT e.name, e.id, e.salary
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE d.dept_name = 'Sales'
ORDER BY e.salary DESC, e.name ASC


-- Count employees per department ordered by count desc	
  
SELECT 
COUNT(e.id) AS total_employees
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id
ORDER BY total_employees DESC

  
-- Department average salary and company average salary side by side
  
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary,
    (SELECT AVG(salary) FROM employee) AS company_avg_salary
FROM employee e
JOIN department d on e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name;


-- For each department, list the number of employees, the average salary, and the overall company average salary side by side. 
-- Order by department name.

SELECT 
    d.dept_name,
    COUNT(e.id) AS total_employees,
    AVG(e.salary) as avg_salary,
    (SELECT AVG(salary) FROM employee) AS avg_company_salary
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name
