
---------------------------------------------------
SELECT order_num as Number, 
order_date as Date FROM orders

---------------------------------------------------
SELECT * FROM customers where cust_id = '1000000003'

---------------------------------------------------
SELECT * FROM products where vend_id = 'DLL01'

---------------------------------------------------
SELECT cust_id, cust_name, cust_contact, cust_email FROM customers 

---------------------------------------------------
SELECT cust_contact, cust_id, cust_name FROM customers Order by cust_contact

---------------------------------------------------
SELECT * FROM products where prod_price < 5

---------------------------------------------------
SELECT * FROM customers where cust_name similar to '[A-G]%'

---------------------------------------------------
SELECT * FROM customers where cust_contact like 'J%'

---------------------------------------------------
SELECT * FROM orders where order_date = '2020-01-30'

---------------------------------------------------
