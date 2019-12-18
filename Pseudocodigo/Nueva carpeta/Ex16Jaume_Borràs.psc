Proceso Ex16	
	
	Escribir "Introduce el tamaño del arreglo";
	Leer size;
	
	Dimension numeros_norepe(size);
	
	numele <- 0;
	ele <- 0;
	count1 <- 0;
	elenorepe <- Verdadero;
	
	Mientras numele < size Hacer //introducir y depuración de valores
		
		Escribir  "Escribe un valor numerico no repetido";
		Leer ele;
		
		Para i<-0 Hasta numele-1 Con Paso 1 Hacer // depura con un para porq crea un valor como contador cada vez hasta el numero de elementos q haya
			
			Si ele = numeros_norepe(i) Entonces
				
				elenorepe <- Falso;
				
			FinSi
			
		FinPara
		
		Si elenorepe Entonces
			numeros_norepe(numele) <- ele;
			numele <- numele +1;
		SiNo
			Escribir  "Este valor existe en el arreglo";
		FinSi
		
		elenorepe <- Verdadero;
	FinMientras

	Mientras count1 < size Hacer //escribir valores array
		
		Escribir "";
		Escribir "El numero ", count1 + 1," escrito de la cadena és ", numeros_norepe(count1);
		count1<-count1+1;
		
	FinMientras
	
	//Els +1 extras son per que el usuari no conta desde 0 aixi l'usuari l'enten
	
FinProceso
