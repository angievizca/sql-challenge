SELECT emp.emp_no, emp.last_name, emp.first_name,
emp.gender, sal.salary
FROM employees AS emp
LEFT JOIN salaries AS sal ON (emp.emp_no = sal.emp_no)
ORDER BY emp_no;
SELECT * FROM 
SELECT * FROM salaries

SELECT last_name, first_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments as d
ON (dm.dept_no = d.dept_no)
INNER JOIN employees as e
ON (dm.emp_no = e.emp_no);

SELECT dm.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_manager AS dm
INNER JOIN departments AS d
ON (dm.dept_no = d.dept_no)
INNER JOIN employees as e
ON (dm.emp_no = e.emp_no);

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND
last_name LIKE 'B%';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
INNER JOIN employees as e
ON (de.emp_no = e.emp_no)
WHERE dept_name = 'Sales';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
INNER JOIN employees as e
ON (de.emp_no = e.emp_no)
WHERE (dept_name = 'Sales' OR dept_name='Development');

SELECT last_name, COUNT(last_name) AS "Count of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;