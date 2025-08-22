-- Show departments where the budget is greater than 1 million.

SELECT
    dept_id,
    dept_name,
    budget
FROM department
WHERE budget > 1000000



-- Find the average salary per department.

SELECT
    d.dept_name,
    ROUND(AVG(e.salary),2) AS avg_salary
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_name



-- Return employees whose salary is above their department’s average.
