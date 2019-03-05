--For each of the following questions

--Write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
--Write the SQL query that answers the question, below that comment.
--Once one person writes half of the queries, switch off.

-- 0. Get all the users
--SELECT * FROM customers;

--1. Get all customers and their addresses.
SELECT "first_name", "last_name", "street", "city", "state", "zip" FROM "addresses" 
JOIN "customers" ON "customers"."id"="addresses"."customer_id";

--2. Get all orders and their line items (orders, quantity and product).

--3. Which warehouses have cheetos?
--4. Which warehouses have diet pepsi?
--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
--6. How many customers do we have?
--7. How many products do we carry?
--8. What is the total available on-hand quantity of diet pepsi?