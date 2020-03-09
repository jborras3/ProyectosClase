SELECT editorial, count(*) FROM bd19202au03e11.libros
group by 1 having count(*) > 2;