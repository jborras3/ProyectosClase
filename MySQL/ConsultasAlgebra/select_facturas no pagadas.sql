select Nom, clients.Numero from exercicis_algebra.venda 
inner join exercicis_algebra.clients inner join exercicis_algebra.factura
where factura.Pagada = '1' order by factura.Data asc ;