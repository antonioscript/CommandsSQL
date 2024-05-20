--Sintax
--The COUNT() function returns the number of rows that matches a specified criterion.
SELECT 
    COUNT(column_name)
FROM 
    table_name
WHERE 
    condition;

--1.The following example uses the COUNT(*) function to get the number of rows from the employees table:
SELECT 
    COUNT(*)
FROM
    employees;


--2. The following example uses the COUNT(*) function to count employees who work in the department with id 6:
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    department_id = 6;
