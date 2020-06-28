# Pewlett-Hackard-Analysis
Pewlett-Hackard-Analysis MODULE 7 CHALLENGE


Technical Report for Pewlett Hackard Retirement Analysis
This report is to show how I realize retirement analysis for Module 7 challenge. In the second paragraph, I will introduce the problem that I was trying to solve by using data. In the third paragraph, I will summarize steps to solve the problems, challenges I encountered with examples and codes. In the fourth paragraph, I will provide results with number of individuals retiring, number of individuals available for mentorship role. I will provide limitation of the analysis and recommendation for the next steps.
The purpose of the analysis is to prepare the management team the possible vacant positions so that we can make our hiring and promotion plan to help company fill the vacant positions for people who will retire soon. In addition, we want to find out employees who are eligible for mentorship program so that management team can prepare for the “silver tsunami” as many current employees reach retirement age.
To solve the problems, I mainly need to provide several deliveries. First, I need to provide employee numbers per title for current employees who will be retiring. Second, I need to provide employee numbers per title for all current employees. Comparison of the two will let us know how many employees we need to hire and what is percentage of employees that will be retiring soon for the current employees. Third, I need to get number of people who is eligible for mentorship by title. To get all the information needed, I first needed to filter employees with current employees. In this case, I created tables for all current employees with to date of 1/1/9999. We don’t care about employees who have already retired or be terminated. So data should only be based on current employees. Second, to get people who will be retiring, I created tables based on birth date. Normally, people will be retiring when they reach their retiring age. So this should be the filter factor. Third, I created tables for updated titles because current title table has one employee with several titles. But our main focus would only be their current title to consider hiring and promotion. For the mentorship program, table was created with the filter that employees’ birth date. I encountered challenges like syntax errors, understanding new codes and how to apply new codes. For example, I found that for where condition, if we want to make one column to equal one string value, we can not use double  quotes but can only use single quotes. The error message didn’t provide hint with details. The only way I can do is look at the other code and see any difference. For the new codes application, the best way is to search online and see as many examples as possible. Several codes are used to realize my analysis like INNER JOIN, GROUP BY, COUNT. Examples are as follows:
INNER JOIN current_employee as ce
ON e.emp_no=ce.emp_no
INNER JOIN updated_title as ut
ON ce.emp_no=ut.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

SELECT COUNT(rt.emp_no) as employee_numbers, rt.title
INTO retirement_number_by_title
FROM retirement_with_title AS rt
GROUP BY rt.title
ORDER BY rt.title
With the current analysis, we found that 72,458 of the total current employees of 240,124 will be retiring soon. Please see below chart for more details for each title. This means 30% of total current employees will retire soon and we need to make a good plan for hiring and promotion as the ratio is pretty high. For mentorship, the total number is 1549. In addition, we need to provide analysis that mentorship employee numbers per title to so how mentorship eligible employees’ title distribution. We may also need to provide titles with different age bracket so that we are more clear about the retirement trend. The limitation of my analysis is that it is only based on birth date for the retiring criteria and mentorship. Sometimes, the gender, salaries will also effect the retirement age. So we may create tables include more criteria.
Supporting material:
 
ERD Tables are saved under the folder.




Retirement number by title:
employee_numbers	title
1090	Assistant Engineer
9285	Engineer
2	Manager
25916	Senior Engineer
24926	Senior Staff
7636	Staff
3603	Technique Leader
Current employee number by title:
employee_numbers	title
3588	Assistant Engineer
30983	Engineer
9	Manager
85939	Senior Engineer
82024	Senior Staff
25526	Staff
12055	Technique Leader

