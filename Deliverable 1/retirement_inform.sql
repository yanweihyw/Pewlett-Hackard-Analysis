SELECT e.emp_no, e.birth_date, e.first_name, e.last_name, ce.dept_no, ce.to_date
INTO retirement_inform
FROM employees as e
INNER JOIN current_employee as ce
ON e.emp_no=ce.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;