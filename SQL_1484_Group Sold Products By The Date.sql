# Write an SQL query to find for each date the number of different products sold and their names.

# The sold products names for each date should be sorted lexicographically.

# Return the result table ordered by sell_date.

# The query result format is in the following example.

SELECT sell_date, COUNT(sell_date) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM (SELECT DISTINCT sell_date, product FROM Activities) AS Activities
GROUP BY sell_date
