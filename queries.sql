CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert sample data
INSERT INTO Customers VALUES (1, 'Alice', 'Delhi');
INSERT INTO Customers VALUES (2, 'Bob', 'Mumbai');
INSERT INTO Customers VALUES (3, 'Charlie', 'Chennai');

INSERT INTO Orders VALUES (101, 1, 'Laptop', 55000);
INSERT INTO Orders VALUES (102, 2, 'Phone', 30000);
INSERT INTO Orders VALUES (103, 1, 'Keyboard', 2000);
-- Note: Charlie has no order

-- 1. INNER JOIN (only matching records)
SELECT c.customer_name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN (all customers + matching orders, if any)
SELECT c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 3. RIGHT JOIN (all orders + matching customers, if any)
-- (SQLite does not support RIGHT JOIN directly, but MySQL does)
SELECT c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 4. FULL OUTER JOIN (all customers + all orders)
-- (Not directly supported in MySQL, simulate with UNION)
SELECT c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. CROSS JOIN (Cartesian product)
SELECT c.customer_name, o.product
FROM Customers c
CROSS JOIN Orders o;

-- 6. SELF JOIN (example: customers from same city)
SELECT a.customer_name AS customer1, b.customer_name AS customer2, a.city
FROM Customers a
JOIN Customers b ON a.city = b.city AND a.customer_id <> b.customer_id;
