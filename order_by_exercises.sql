USE employees;

USE employees;

USE employees;


/*TODO: Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh..*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;



/*TODO: Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;



/*TODO: Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, last_name ASC;



/*TODO: Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no ASC;



/*TODO: Add a condition to the previous query to find everybody with those names who is also male — 441 rows.*/

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE gender = 'M'
    AND first_name LIKE 'Irena' OR 'Vidya' OR 'Maya';



/*TODO: Find all employees whose last name starts or ends with 'E' — 30,723 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR '%E';



/*TODO: Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';



/*TODO: Find all employees with a 'q' in their last name but not 'qu' — 547 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';




