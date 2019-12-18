select Nom, Id_Venda, Quantitat from exercicis_algebra.clients, exercicis_algebra.venda
where Numero = Num_client and Quantitat > 500;