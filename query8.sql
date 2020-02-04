SELECT
    last_name as "Last Name",
    COUNT(emp_no) as "Employees with Last Name"
FROM employees
GROUP BY
    last_name
ORDER BY
    COUNT(emp_no) DESC