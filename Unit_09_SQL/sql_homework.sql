
----List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,e.first_name,e.last_name,e.gender, 
salaries.salary
FROM employees As e
INNER JOIN salaries ON e.emp_no=salaries.emp_no
ORDER BY salary;


--List employees who were hired in 1986.

SELECT *
FROM employees
WHERE EXTRACT(year FROM hire_date)= 1986
ORDER BY hire_date;


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, 
e.first_name, m.from_date, m.to_date 
FROM dept_manager AS m
JOIN departments AS d ON m.dept_no=d.dept_no
JOIN employees AS e ON m.emp_no=e.emp_no
ORDER BY dept_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp ON e.emp_no=dept_emp.emp_no
JOIN departments AS d ON dept_emp.dept_no=d.dept_no
ORDER BY emp_no;


--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY emp_no;


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp ON e.emp_no=dept_emp.emp_no
JOIN departments AS d ON dept_emp.dept_no=d.dept_no
WHERE dept_name ='Sales'
ORDER BY emp_no;


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp ON e.emp_no=dept_emp.emp_no
JOIN departments AS d ON dept_emp.dept_no=d.dept_no
WHERE dept_name ='Sales' OR dept_name ='Development'
ORDER BY emp_no;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) 
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

-- Epilogue: 499942
SELECT * FROM EMPLOYEES
WHERE emp_no=499942;







