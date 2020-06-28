SELECT *
INTO current_employee
FROM dept_emp
WHERE dept_emp.to_date=('9999-01-01')
ORDER BY dept_emp.emp_no;