-- Create a view high_earners as employees with salary ≥ 120,000 joined to dept

CREATE view high_earners AS 
    SELECT 
        e.id,
        e.name,
        e.salary,
        d.dept_name
    FROM employee e
    JOIN department d ON e.dept_id=d.dept_id
    WHERE salary > 120000



-- Using the view list headcount and avg salary per dept

SELECT dept_name,
        COUNT(*) AS head_count,
        AVG(salary) AS avg_salary
    FROM high_earners
    GROUP BY dept_name
    ORDER BY dept_name



-- Drop the view high_earners

DROP view high_earners




-- For each dept compute headcount and average yoe

SELECT 
    d.dept_id,
    d.dept_name,
    COUNT(*) AS headcount,
    ROUND(AVG(e.yoe),2) AS average_yoe
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name



-- Employees hired before 2020 with dept_name

SELECT 
    e.id,
    e.name,
    e.hire_date,
    d.dept_name
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
WHERE EXTRACT(YEAR from e.hire_date) > 2020



-- List depts where every employee earns more than 100,000

SELECT 
    d.dept_id,
    d.dept_name,
    COUNT(*) AS headcount,
    AVG(e.salary) AS average_salary
FROM employee e
JOIN department d ON e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING MIN(e.salary) > 100000




