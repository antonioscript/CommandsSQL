SELECT
	employee_id,
	first_name,
	last_name,
	job_id
FROM
	employees
WHERE
	job_id IN (8, 9, 10)
ORDER BY
	job_id;