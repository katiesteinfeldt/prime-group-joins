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
SELECT "order_id", "description", "quantity" FROM "line_items" JOIN "products" ON "line_items"."product_id"="products"."id" JOIN "orders" ON "line_items"."order_id"="orders"."id";

--3. Which warehouses have cheetos?
SELECT "warehouse", "description", "on_hand" FROM "warehouse_product" JOIN "warehouse" ON "warehouse"."id"="warehouse_product"."warehouse_id" JOIN "products" ON "products"."id"="warehouse_product"."product_id";
Delta is the only warehouse with cheetos. 

--4. Which warehouses have diet pepsi?
SELECT "warehouse", "description", "on_hand" FROM "warehouse_product" JOIN "warehouse" ON "warehouse"."id"="warehouse_product"."warehouse_id" JOIN "products" ON "products"."id"="warehouse_product"."product_id";
Alpha, Delta, Gamma have diet pepsi 

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT COUNT("customer_id") FROM "orders" JOIN "addresses" ON "addresses"."id"="orders"."address_id" JOIN "customers" ON "addresses"."customer_id"="customers"."id" WHERE "customers"."id"='1';
SELECT COUNT("customer_id") FROM "orders" JOIN "addresses" ON "addresses"."id"="orders"."address_id" JOIN "customers" ON "addresses"."customer_id"="customers"."id" WHERE "customers"."id"='2';
SELECT COUNT("customer_id") FROM "orders" JOIN "addresses" ON "addresses"."id"="orders"."address_id" JOIN "customers" ON "addresses"."customer_id"="customers"."id" WHERE "customers"."id"='3';
SELECT COUNT("customer_id") FROM "orders" JOIN "addresses" ON "addresses"."id"="orders"."address_id" JOIN "customers" ON "addresses"."customer_id"="customers"."id" WHERE "customers"."id"='4';

--6. How many customers do we have?
SELECT COUNT(*) FROM "customers";
4

--7. How many products do we carry?
SELECT COUNT(*) FROM "products";
7

--8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("on_hand") FROM "warehouse_product" JOIN "products" ON "products"."id"="warehouse_product"."product_id" WHERE "warehouse_product"."product_id"='6';

