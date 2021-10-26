select count(*), title from employees e 
 inner join titles t on e.emp_no = t.emp_no 
 where e.hire_date > '1965-01-01' 
 group by t.title;

select  t.title, avg(s.salary) 
from titles t inner join salaries s on t.emp_no = s.emp_no 
group by t.title; 
SELECT 
    SUM(ROUND(s.salary / 365, 2) * LEAST(
    DATEDIFF(s.to_date, '1990-01-01'),
    DATEDIFF('1992-12-31', s.from_date),
	DATEDIFF(s.to_date, s.from_date))) AS 'total cash '
FROM
    salaries s
        INNER JOIN
    dept_emp de ON s.emp_no = de.emp_no
        INNER JOIN
    departments d ON de.dept_no = d.dept_no 
WHERE
    dept_name = 'Marketing'
        AND YEAR(s.from_date) <= 1992
        AND YEAR(s.to_date) >= 1990;
    