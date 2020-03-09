SELECT editorial, max(precio) as max_precio FROM bd19202au03e11.libros
where precio > 30
group by 1;