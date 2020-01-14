select Id_Venda from exercicis_algebra.venda 
where Quantitat > (select Quantitat from exercicis_algebra.venda where Id_Venda = 18);