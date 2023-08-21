USE employees;


/*TODO: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');



/*TODO: Find all employees whose last name starts with 'E' — 7,330 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';



/*TODO: Find all employees with a 'q' in their last name — 1,873 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';



/*TODO: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.*/

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'Irena' OR 'Vidya' OR 'Maya';



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




