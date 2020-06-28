SELECT e.emp_no, e.first_name, e.last_name, e.birth_date, ut.title, ut.from_date, ut.to_date
INTO mentorship
FROM employees AS e
INNER JOIN current_employee as ce
ON e.emp_no=ce.emp_no
INNER JOIN updated_title as ut
ON ce.emp_no=ut.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no