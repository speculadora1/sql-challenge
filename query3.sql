SELECT
    dm.dept_no as "Department Number",
    d.dept_name as "Department Name",
    e.emp_no as "Employee Number",
    e.last_name as "Last Name",
    e.first_name as "First Name",
    dm.from_date as "Start Date",
    dm.end_date as "End Date"
FROM dept_manager dm
INNER JOIN employees e
    ON dm.emp_no = e.emp_no
INNER JOIN departments d
    ON dm.dept_no = d.dept_no