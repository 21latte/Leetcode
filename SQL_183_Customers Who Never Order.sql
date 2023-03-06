# Write an SQL query to report all customers who never order anything.

# Return the result table in any order.

SELECT NAME AS Customers
FROM CUSTOMERS C
WHERE C.ID NOT IN (
        SELECT C.ID
        FROM CUSTOMERS C JOIN ORDERS O ON C.ID = O.CUSTOMERID)
