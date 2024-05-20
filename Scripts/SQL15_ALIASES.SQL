SELECT column_name AS alias_name
FROM table_name;

--Example:
SELECT
	inv_no AS invoice_no,
	amount,
	due_date AS 'Due date',
	cust_no 'Customer No'
FROM
	invoices;