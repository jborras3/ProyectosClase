Proceso Ex19
	
	size <- 0;
	
	Escribir "Introduzca el tama�o de los arrays";
	
	Leer size;
	
	Dimension array1(size);
	Dimension array2(size);
	
	Para i<-0 Hasta size-1 Con Paso 1 Hacer //pedir valores del primer array
		Escribir "Introduzca el valor que quiera (numericos) para la posicion ",i+1;
		Leer array1(i);
	FinPara
	
	Para i<-0 Hasta size-1 Con Paso 1 Hacer //sumar todo para el segundo array i la comparaci�n de la suma de los 2
		array2(i) <- array1(i) + 10;
		Escribir "";
		Escribir "El array en la posici�n ", i+1," tiene el valor de ", array1(i)," y el valor del segundo es el valor anterior m�s 10: ", array2(i);
	FinPara
	Escribir "";
FinProceso
