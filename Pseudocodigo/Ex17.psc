Proceso Ex17
	
	count <- 0;
	
	countarray <- 0;
	
	sum <- 0;
	
	mediaalumno <- 0;
	
	Dimension alumno_notas(10);
	
	
	
	Mientras count <> 10 Hacer //bucle para introducir valores de array
		
		Escribir "Escribe la nota num ", count+1, " del alumno";
		Leer alumno_notas(countarray);
		Escribir "";
		
		count <- count + 1;
		countarray <- countarray + 1;
		
	FinMientras
	
	count <- 0; //reinicio de contadores
	
	countarray <- 0;
	
	Mientras count <> 10 Hacer //bucle sumar
		
		
		sum <- sum + alumno_notas(countarray);
		
		count <- count + 1;
		countarray <- countarray + 1;
		
	FinMientras
	
	mediaalumno <- sum / count;
	
	Escribir "";
	
	Escribir "La media del alumno és ", mediaalumno;
	
	
FinProceso
