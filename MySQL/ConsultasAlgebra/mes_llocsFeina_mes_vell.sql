select A.emp_no, A.first_name, A.last_name, A.birth_date, count(B.title) as 'Puestos' from employees.employees A 
inner join employees.titles B on A.emp_no = B.emp_no
group by A.emp_no having min(A.birth_date) order by Puestos desc limit 1;