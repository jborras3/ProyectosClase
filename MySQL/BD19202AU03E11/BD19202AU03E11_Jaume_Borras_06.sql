SELECT editorial, count(*) as num_llibres FROM bd19202au03e11.libros
where precio is not null
group by 1 having editorial <> 'Planeta';