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
