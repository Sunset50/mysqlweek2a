
select count(*), title from employees e 
inner join titles t on e.emp_no = t.emp_no where e.hire_date > '1965-01-01' 
group by t.title;

select t.title, avg(s.salary) from titles t 
inner join salaries s on t.emp_no = s.emp_no;