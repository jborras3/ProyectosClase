select B.title, A.gender, count(B.title) from employees.employees A
left join employees.titles B on A.emp_no = B.emp_no 
where B.to_date = '9999-01-01' group by A.gender, B.title order by B.title asc;

