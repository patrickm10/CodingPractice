-- Show departments where the budget is greater than 1 million.

SELECT
    dept_id,
    dept_name,
    budget
FROM department
WHERE budget > 1000000
