--0. Explicação do Símbolo de %

Like 'Kim%'	corresponde a uma string que começa com Kim
Like '%er'	corresponde a uma string que termina com er
Like '%ch%'	corresponder a uma string que contém ch

--1. Nomes que iniciam com 'Da'
SELECT
	employee_id,
	first_name,
	last_name
FROM
	employees
WHERE
	first_name LIKE 'Da%';

+-------------+------------+-----------+
| employee_id | first_name | last_name |
+-------------+------------+-----------+
|         105 | David      | Austin    |
|         109 | Daniel     | Faviet    |
+-------------+------------+-----------+

--2.Nomes que terminal com 'er'
SELECT
	employee_id,
	first_name,
	last_name
FROM
	employees
WHERE
	first_name LIKE '%er';

+-------------+------------+-----------+
| employee_id | first_name | last_name |
+-------------+------------+-----------+
|         103 | Alexander  | Hunold    |
|         115 | Alexander  | Khoo      |
|         200 | Jennifer   | Whalen    |
+-------------+------------+-----------+

--3. Nomes que tenham a palavra 'an'
SELECT
	employee_id,
	first_name,
	last_name
FROM
	employees
WHERE
	last_name LIKE '%an%';

+-------------+-------------+-----------+
| employee_id | first_name  | last_name |
+-------------+-------------+-----------+
|         102 | Lex         | De Haan   |
|         112 | Jose Manuel | Urman     |
|         123 | Shanta      | Vollman   |
|         178 | Kimberely   | Grant     |
+-------------+-------------+-----------+