

-- Retirement titles
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY e.emp_no;



SELECT * FROM retirement_titles;

--Unique titles
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;


SELECT * 
FROM unique_titles
;

--Retiring titles
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

SELECT * FROM retiring_titles;

SELECT SUM (rt.count) AS total_retiring
FROM retiring_titles AS rt;


--Mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, ti.title;


SELECT * FROM mentorship_eligibility;

SELECT COUNT (me.emp_no) AS total_mentors
FROM mentorship_eligibility AS me;

SELECT * 
FROM titles
WHERE emp_no = '10291';

SELECT * 
FROM dept_emp
WHERE emp_no = '10095'
;

DROP TABLE retirement_titles ;
DROP TABLE unique_titles ;
DROP TABLE retiring_titles ;
DROP TABLE mentorship_eligibility;
