Scott Schmidt
IT378 Illinois State University
Oracle SQL: Exam1

For questions 3-10, answer the question fully. 
Submit answers in a single file – do not submit a PDF 
--------------------------------------------------------------------------
3. What are the mandatory clauses of a SQL query and what do they represent?
  
--The two mandatory clauses are SELECT and FROM:
1.SELECT specifies the columns to retrieve. 
2.FROM gets the table where the data is stored.

--A simple SQL query looks like:
SELECT column_name
FROM table_name;


--------------------------------------------------------------------------
4. When should double-quotation marks (" ") be used in a SQL query statement?
  
--Double quotation marks are used when a name contains spaces, special characters or is case-sensitive. 
--A common example would be:
SELECT "First Name"
FROM "Customers Records";

--This can be avoided by using underscores:
SELECT first_name 
FROM customers_records;

--------------------------------------------------------------------------
5. What is the purpose of the ORDER BY clause? 
  
--The ORDER BY clause sorts the table often by a column name in descending (DESC) or ascending (ASC) order.
A basic example would be:
SELECT name, score
FROM people
ORDER BY score DESC, name ASC;

--This would get the names of the people and sort them by the highest score.

  
--------------------------------------------------------------------------
6. What is the purpose of the WHERE clause?

--The WHERE clause helps filter out data with certain requirements. For example:
SELECT name, hours_worked
FROM employees
WHERE hours_worked > 28.

--This could help filter out employees who worked over 28 hours a week. 
--The WHERE clause uses operators like =, >, < <>, IN, and LIKE.

  --------------------------------------------------------------------------
7. Describe how the COUNT function processes NULL values when the function is executed.
  
--In SQL, COUNT(*) will count all rows regardless of NULL values.
--The COUNT(column_name) will count rows where the column_name is NOT NULL.

  
--------------------------------------------------------------------------
8. Explain the difference between a WHERE and a HAVING clause.
  
--WHERE is used before a GROUP BY clause. 
--Having is used after a GROUP BY clause with an aggregate function like SUM or COUNT.

--Here is a SQL query with both WHERE and HAVING:
SELECT customer, SUM(total) as total_spent
FROM orders
WHERE status = 'complete' and year='2025'
GROUP BY customer
HAVING SUM(total) > 1000;


--------------------------------------------------------------------------
9. Explain the difference between an inner join and an outer join.
  
--An INNER JOIN returns only matching rows on the ON condition. 
--If there is no match, then the row is not included.
--If table A has id 123 and table b does not have id, then that row is not included.

--OUTER JOIN includes all rows regardless if there is an exact match on the ON condition. 
--Using the same example above, the row with ID 123 will be included the new table with null values from table B.

  
--------------------------------------------------------------------------
10. Explain the difference between an implicit join and an explicit join.
  
--An implicit join will join using the WHERE condition without using a JOIN keyword. For example:
SELECT a.account_id, a.name
FROM accounts a, cost c
WHERE a.account_id = c.account_id;

--An explicit join uses the JOIN keyword such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN to join the tables with an ON condition. For example:
SELECT a.account_id, a.name
FROM accounts a
INNER JOIN cost c ON a.account_id = c.account_id; 

--An explicit join uses the JOIN keyword such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN to join the tables with an ON condition. For example:
SELECT a.account_id, a.name
FROM accounts a
INNER JOIN cost c ON a.account_id = c.account_id; 
