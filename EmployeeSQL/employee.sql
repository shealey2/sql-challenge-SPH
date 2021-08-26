
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no=s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date Like '%1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager dm ON
e.emp_no=dm.emp_no
INNER JOIN departments d ON
d.dept_no=dm.dept_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
e.emp_no=de.emp_no
INNER JOIN departments d ON
d.dept_no=de.dept_no;

