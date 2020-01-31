select C.dept_name as 'departamento', A.gender as 'genero', count(A.emp_no) as 'contador' from employees.employees A
inner join employees.dept_emp B on A.emp_no = B.emp_no 
inner join employees.departments C on B.dept_no = C.dept_no
where B.to_date = '9999-01-01' group by C.dept_name, A.gender
order by C.dept_name asc;