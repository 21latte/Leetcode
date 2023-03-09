# Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

# The query result format is in the following example.

# Write your MySQL query statement below

WITH T AS (
    SELECT salary
    FROM Employee
    GROUP BY salary
    ORDER BY salary DESC
    LIMIT 1
)
SELECT if(count(E.salary) = 0, null, E.salary) AS SecondHighestSalary
FROM (
    SELECT *
    FROM Employee
    GROUP BY salary
    ORDER BY salary DESC
    LIMIT 2) AS E, T
WHERE E.salary != T.salary
