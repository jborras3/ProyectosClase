SELECT editorial, avg(precio) FROM bd19202au03e11.libros
group by 1 having avg(precio) > 25;