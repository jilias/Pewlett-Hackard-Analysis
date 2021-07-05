--PART 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	tl.title,
	tl.from_date,
	tl.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER by e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;
