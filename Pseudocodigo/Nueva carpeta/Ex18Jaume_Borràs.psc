Proceso Ex18
	
	count <- 0;
	
	countarray <- 0;
	
	contadorfalso <- 0;
	
	numabuscar <- 0;
	
	Dimension alumno_notas(10);
	
	Mientras count <> 10 Hacer //bucle para introducir valores de array
		
		Escribir "Escribe la nota num ", count+1, " del alumno";
		Leer alumno_notas(countarray);
		Escribir "";
		
		count <- count + 1;
		countarray <- countarray + 1;
		
	FinMientras
	
	Escribir "Que numero quieres buscar?"; //introducir nota que busca el usuario
	Leer numabuscar;
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer //comparador
		
		Si numabuscar = alumno_notas(i) Entonces
			Escribir "La nota numero ", i+1, " es la nota que andabas buscando: ", numabuscar;
		sino 
			contadorfalso <- contadorfalso + 1;
		FinSi
		
	FinPara
	
	Si contadorfalso = 10 Entonces
		Escribir "El valor de nota que pides (",numabuscar,") no existe";
	FinSi
	
	
FinProceso
