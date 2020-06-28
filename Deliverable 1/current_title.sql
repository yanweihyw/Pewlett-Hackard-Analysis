SELECT ut.emp_no, ut.title, ut.from_date, ut.to_date
INTO current_title
FROM updated_title AS ut
INNER JOIN current_employee as ce
ON ut.emp_no=ce.emp_no
ORDER BY ut.emp_no;
