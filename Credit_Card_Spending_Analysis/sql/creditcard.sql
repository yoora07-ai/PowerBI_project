-- Go over the tables and check columns
SELECT * FROM test_database.customer Limit 20;
SELECT * FROM test_database.repayment Limit 20;
SELECT * FROM test_database.spend Limit 20;

-- Customer total spending of credit card
SELECT c.customer, 
       ROUND(sum(s.amount), 2) as sum_amount
FROM test_database.customer as c
LEFT JOIN test_database.spend as s
ON c.customer = s.customer
GROUP BY c.customer
ORDER BY c.customer;
-- Validation of row number = 100

-- Combined two tables(spend, customer) for behavior analysis
-- I used this table for power BI visualization
SELECT c.segment,
	   c.customer,
	   c.age,
	   c.city,
       c.product,
       c.company,
       c.limit,
	   s.type,
       ROUND(AVG(s.amount), 2) as avg_amount,
       ROUND(SUM(s.amount), 2) as sum_amount
FROM test_database.customer as c
LEFT JOIN test_database.spend as s
ON c.customer = s.customer
GROUP BY c.segment,
		c.customer,
        c.age,
	    c.city,
        c.product,
        c.company,
        c.limit,
	    s.type
ORDER BY c.segment,
		c.customer,
        c.age,
	    c.city,
       c.product,
       c.company,
       c.limit,
	   s.type
       ;

