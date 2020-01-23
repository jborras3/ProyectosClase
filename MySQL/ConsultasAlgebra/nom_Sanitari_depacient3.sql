select Nom from exercicis_algebra.sanitaris A 
left join exercicis_algebra.consulta B on B.Id_Sanitari = A.Id
where Id_Pacient = 3;   