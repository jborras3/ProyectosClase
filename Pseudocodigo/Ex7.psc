Proceso Ex7
	
	respuesta<- "s";
	count<-0;
	frase<- "";
	
	Mientras respuesta = "s" Hacer
		Escribir "Frase a introducir:";
		Leer frase;
		count<-count + 1;
		Escribir "Desea escribir otra frase? (s/n)";
		Leer respuesta;
	FinMientras
	
	Escribir "Numeros de frases ",count;
	
FinProceso
