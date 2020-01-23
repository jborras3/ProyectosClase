select A.Id, A.Nom from exercicis_algebra.pacients A 
left join exercicis_algebra.consulta B on A.Id = B.Id_Pacient
left join exercicis_algebra.sanitaris C on B.Id_Sanitari = C.Id
where B.Id_Pacient is null or C.Professio != 'INFERMER';   