select A.emp_no, A.first_name, A.last_name, B.title, D.dept_name from employees.employees A
left join employees.titles B on A.emp_no = B.emp_no
left join employees.dept_emp C on B.emp_no = C.emp_no
left join employees.departaments D on C.dept_no = D.dept_no
where B.to_date = '9999-01-01';