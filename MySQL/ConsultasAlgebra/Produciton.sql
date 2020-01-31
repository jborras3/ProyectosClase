select count(A.birth_date) as 'Contador' from employees.employees A
inner join employees.dept_emp B on A.emp_no = B.emp_no
inner join employees.departments C on B.dept_no = C.dept_no
where C.dept_name = 'Production' and A.birth_date like '%-01-%';