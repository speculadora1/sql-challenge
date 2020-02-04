SELECT
    e.emp_no as "Employee Number",
    e.last_name as "Last Name",
    e.first_name as "First Name",
    e.gender as "Gender",
    s.salary as "Salary"
FROM employees e
INNER JOIN salaries s
    ON e.emp_no = s.emp_no