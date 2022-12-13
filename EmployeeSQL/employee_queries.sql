﻿
Data Analysis:

1) List the employee number, last name, first name, sex, and salary of each employee.

    SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
    FROM employees
    INNER JOIN salaries on employees.emp_no = salaries.emp_no


2)

3) List the manager of each department along with their department number, department name, employee number, last name, and first name.

    SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name,
    employees.last_name, employees.first_name
    FROM dept_manager
    INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
    INNER JOIN employees ON dept_manager.emp_no = employees.emp_no


4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

    SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name
    FROM dept_emp
    INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
    ORDER BY dept_no asc


5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

    SELECT first_name, last_name, sex
    FROM employees
    WHERE first_name = 'Hercules' 
    AND last_name LIKE 'B%'


6) List each employee in the Sales department, including their employee number, last name, and first name.

    SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
    FROM employees
    INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
    INNER JOIN departments on dept_emp.dept_no = departments.dept_no


7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

    SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
    FROM employees
    INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
    INNER JOIN departments on dept_emp.dept_no = departments.dept_no
    WHERE dept_name = 'Sales'
    OR dept_name = 'Development'


8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



