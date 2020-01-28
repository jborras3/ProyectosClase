select A.emp_no, A.first_name, A.last_name, B.title from employees.employees A
left join employees.titles B on A.emp_no = B.emp_no 
where B.to_date = '9999-01-01';


