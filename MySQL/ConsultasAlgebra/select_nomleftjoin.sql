select Nom from exercicis_algebra.clients left join exercicis_algebra.venda 
on Numero = Id_Venda 
where Num_Factura = null  ;