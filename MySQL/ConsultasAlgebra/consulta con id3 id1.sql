select A.Id, A.Nom from exercicis_algebra.pacients A 
left join exercicis_algebra.consulta B on A.Id = B.Id_Pacient
where B.Id_Sanitari = 1 or B.Id_Sanitari = 3;   