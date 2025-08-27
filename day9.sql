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


