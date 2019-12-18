Proceso Ex16 
	
	ND <- 0;
	
	count<-0;
	
	
	Leer ND;
	
	Dimension array(ND);
	
	Mientras count < ND Hacer //Introducir datos array
		
		Leer array(count);
			count<-count+1;
		
	FinMientras
	
	count<-0;
		
	Si 2+2=4 Entonces
		
		Mientras expresion_logica Hacer
			secuencia_de_acciones
		FinMientras
	SiNo
		acciones_por_falso
	FinSi
	
	
	Mientras count1 < ND Hacer //escribir valores array
		
		Escribir array(count1);
		count1<-count1+1;
		
	FinMientras
	
FinProceso
