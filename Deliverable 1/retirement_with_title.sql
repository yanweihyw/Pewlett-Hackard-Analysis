SELECT ri.emp_no, ri.first_name, ri.last_name, ut.title, ut.from_date, ut.to_date, s.salary
INTO retirement_with_title
FROM retirement_inform AS ri
INNER JOIN updated_title AS ut
ON ri.emp_no=ut.emp_no
INNER JOIN salaries as s
ON ri.emp_no=s.emp_no
ORDER BY emp_no
