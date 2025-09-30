# Task 5 - SQL Developer Internship

## Objective
Learn to combine data from multiple tables using different types of SQL **joins**.

## Key Concepts Practiced
- INNER JOIN → returns only matching rows
- LEFT JOIN → returns all rows from left table + matching rows from right
- RIGHT JOIN → returns all rows from right table + matching rows from left
- FULL OUTER JOIN → returns all rows from both tables
- CROSS JOIN → returns Cartesian product
- SELF JOIN → joins a table with itself

## Files Included
- **queries.sql** → Contains table creation, sample data, and join queries.
- **screenshots/** (optional) → Output screenshots from DB Browser / MySQL Workbench.

## Tools Used
- DB Browser for SQLite  
- MySQL Workbench  

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

## Outcome
By completing this task, I gained hands-on experience with:
- Joining multiple tables
- Handling missing data using LEFT/RIGHT/FULL joins
- Understanding Cartesian product with CROSS JOIN
- Applying SELF JOIN for intra-table relationships
