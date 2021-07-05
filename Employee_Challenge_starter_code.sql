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

--retiring titles count
SELECT COUNT(title) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

--PART 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tl.title
INTO mentorship_elegibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS tl
ON (e.emp_no = tl.emp_no)
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND (de.to_date = '9999-01-01')
ORDER by emp_no;

SELECT * FROM mentorship_elegibility;

