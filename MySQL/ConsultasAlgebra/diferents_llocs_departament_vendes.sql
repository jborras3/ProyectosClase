select C.dept_name as 'Departamento', A.title as 'Puesto' from employees.titles A 
inner join employees.dept_emp B on A.emp_no = B.emp_no
inner join employees.departments C on B.dept_no = C.dept_no
where B.to_date = '9999-01-01' and C.dept_name = 'Sales';