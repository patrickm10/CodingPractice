-- Find departments with budget greater than 1 million

SELECT
    d.dept_name,
    SUM(e.salary) AS dept_salary
FROM department d
JOIN employee e ON d.dept_id=e.dept_id
GROUP BY d.dept_name
HAVING SUM(e.salary) > 1000000



-- Compute ratio of max salary to avg salary per dept (inequality proxy)

SELECT
  d.dept_id,
  d.dept_name,
  MAX(e.salary)               AS max_salary,
  AVG(e.salary)               AS avg_salary,
  MAX(e.salary) * 1.0
    / NULLIF(AVG(e.salary), 0) AS max_to_avg_ratio
FROM department d
LEFT JOIN employee e
  ON e.dept_id = d.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY max_to_avg_ratio DESC NULLS LAST;


-- Employees whose salary is above Q3 in their dept (PERCENTILE_CONT)

WITH s AS (
  SELECT
    e.id,
    e.dept_id,
    e.salary,
    quantile_cont(e.salary, 0.75) OVER (PARTITION BY e.dept_id) AS q3
  FROM employee e
  WHERE e.salary IS NOT NULL
)
SELECT
  s.id,
  d.dept_name,
  s.salary,
  s.q3
FROM s
JOIN department d ON d.dept_id = s.dept_id
WHERE s.salary > s.q3        
ORDER BY d.dept_name, s.salary DESC;
