USE join_test_db;
USE employees;

/*TODO: Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department. */

DESCRIBE titles;
SELECT DISTINCT title FROM titles;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        JOIN titles as title
            ON title.emp_no = dm.emp_no
WHERE title = 'Manager' AND title.to_date = '9999-01-01'
ORDER BY dept_name;



/*TODO: Find the name of all departments currently managed by women.*/

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, gender
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN titles as title
              ON title.emp_no = dm.emp_no
WHERE title = 'Manager' AND title.to_date = '9999-01-01' AND gender = 'F'
ORDER BY dept_name;



/*TODO: Find the current titles of employees currently working in the Customer Service department.*/

DESCRIBE departments;
SELECT DISTINCT dept_name FROM departments;


SELECT title, COUNT(*) as Total
FROM employees as e
         JOIN dept_emp as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN titles as title
              ON title.emp_no = dm.emp_no
WHERE dept_name = 'Customer Service' AND title.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
GROUP BY title;



/*TODO: Find the current salary of all current managers.*/

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN titles as title
              ON title.emp_no = dm.emp_no
        JOIN salaries as salary
            ON salary.emp_no = dm.emp_no
WHERE title = 'Manager' AND title.to_date = '9999-01-01' AND salary.to_date = '9999-01-01'
ORDER BY dept_name;



/*TODO: Bonus Find the names of all current employees, their department name, and their current manager's name .*/

