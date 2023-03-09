# Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

# The employee's name is missing, or
# The employee's salary is missing.
# Return the result table ordered by employee_id in ascending order.

# The query result format is in the following example.

# CASE 1
SELECT T.employee_id
FROM (
    SELECT * FROM Employees LEFT JOIN Salaries USING(employee_id)
    UNION
    SELECT * FROM Salaries LEFT JOIN Employees USING(employee_id))
    AS T
WHERE name IS NULL OR salary IS NULL
ORDER BY employee_id

# CASE 2
SELECT employee_id
FROM Employees
WHERE employee_id NOT IN (SELECT employee_id FROM Salaries)

UNION 

SELECT employee_id
FROM Salaries
WHERE employee_id NOT IN (SELECT employee_id FROM Employees)

ORDER BY employee_id;
