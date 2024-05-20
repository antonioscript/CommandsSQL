--1.
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    salary
FROM
    employees
WHERE
    salary BETWEEN 2500 AND 2900
ORDER BY 
	salary DESC;

--2. 
SELECT * 
FROM 
	TB_DESPESA
WHERE
	VL_DESPESA BETWEEN 200 AND 1000

--3.
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    salary
FROM
    employees
WHERE
    salary >= 2500 AND salary <= 2900
ORDER BY 
	salary;

--4.
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '1999-01-01' AND '2000-12-31'
ORDER BY 
	hire_date;

--5. 
SELECT DT_DESPESA, * 
FROM 
	TB_DESPESA
WHERE
	DT_DESPESA BETWEEN '2023-12-01' AND GETDATE()