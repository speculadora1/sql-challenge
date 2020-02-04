SELECT
    e.emp_no as "Employee Number",
    e.last_name as "Last Name",
    e.first_name as "First Name",
    d.dept_name as "Department Name"
FROM dept_emp de
INNER JOIN employees e
    ON de.emp_no = e.emp_no
INNER JOIN departments d
    ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development')