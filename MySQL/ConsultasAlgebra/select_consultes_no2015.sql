select A.Nom from exercicis_algebra.pacients A left join exercicis_algebra.consulta B 
on A.Id = B.Id_Pacient where B.Data not like '2015%';