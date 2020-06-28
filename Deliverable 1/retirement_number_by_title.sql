SELECT COUNT(rt.emp_no) as employee_numbers, rt.title
INTO retirement_number_by_title
FROM retirement_with_title AS rt
GROUP BY rt.title
ORDER BY rt.title
