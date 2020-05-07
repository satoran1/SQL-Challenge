-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.gendar,
    s.salary
FROM employees e
JOIN salaries
USING (emp_no)

-- 2. List employees who were hired in 1986.
SELECT * FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT
    dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name
    dm.from_date,
    dm.to_date
FROM dept_manager dm
JOIN departments d
USING (dept_no)
JOIN employees e
USING (emp_no)

-- Department of each employee
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- Employees whose first name is "Hercules" and last name begins with "B"
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Employees in the Sales department
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- Employees in Sales and Development departments
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

-- The frequency of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
