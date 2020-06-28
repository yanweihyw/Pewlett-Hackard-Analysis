SELECT *
INTO updated_title
FROM
 (SELECT ti.emp_no,
 ti.title,
 ti.from_date,
 ti.to_date,
 ROW_NUMBER() OVER
 (PARTITION BY (ti.emp_no)
 ORDER BY ti.to_date DESC) rn
 FROM titles AS ti
 ) tmp WHERE rn = 1
ORDER BY emp_no;