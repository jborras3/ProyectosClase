select DISTINCT Nom as 'NomCli'from exercicis_algebra.venda 
inner join exercicis_algebra.clients inner join exercicis_algebra.factura
where factura.Pagada = '0' order by factura.Data asc ;