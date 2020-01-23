select Nom, NSS from exercicis_algebra.pacients 
left join exercicis_algebra.consulta on pacients.Id=Id_pacient
where Id_Pacient is null;