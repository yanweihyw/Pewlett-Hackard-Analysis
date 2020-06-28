SELECT COUNT(ct.emp_no) as employee_numbers, ct.title
INTO current_employee_number_by_title
FROM current_title AS ct
GROUP BY ct.title
ORDER BY ct.title
