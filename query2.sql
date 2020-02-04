SELECT *
FROM employees
WHERE DATE_PART('year', hire_date) = 1986