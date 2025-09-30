## Key Concepts Practiced
- INNER JOIN → returns only matching rows
- LEFT JOIN → returns all rows from left table + matching rows from right
- RIGHT JOIN → returns all rows from right table + matching rows from left
- FULL OUTER JOIN → returns all rows from both tables
- CROSS JOIN → returns Cartesian product
- SELF JOIN → joins a table with itself

## Example Queries
```sql
-- INNER JOIN
SELECT c.customer_name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN
SELECT c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- FULL OUTER JOIN (using UNION in MySQL/SQLite)
SELECT c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
```

