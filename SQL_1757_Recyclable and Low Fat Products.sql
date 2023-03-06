# Write an SQL query to find the ids of products that are both low fat and recyclable.

# Return the result table in any order.

SELECT PRODUCT_ID
FROM PRODUCTS
WHERE LOW_FATS = 'Y' AND RECYCLABLE = 'Y'
