Proceso Ex15
	count<-0;
	num1<-0;
	num2<-0;
	countentre<-0;
	par<-0;
	sumaimpar<-0;
	
	Leer num1;
	Leer num2;
	
	Escribir "El numero 1 es ", num1;
	Escribir "El numero 2 es ", num2;
	
	Si num1 > num2 Entonces
		countentre<- num1 - num2;
		Escribir "Hay ",countentre," entre los dos numeros";
		Escribir "Numeros entre los dos numeros: ";
		
		Mientras num1 > num2 Hacer
			num2<- num2 + 1;
			Escribir num2;
			Si num2 MOD 2=0 Entonces
				par <- par + 1;
			SiNo
				sumaimpar<- sumaimpar + num1;
			FinSi
		FinMientras
		
	SiNo
		countentre<- num2 - num1;
		Escribir "Hay ",countentre," entre los dos numeros";
		Escribir "Numeros entre los dos numeros: ";
		
		Mientras num2 > num1 Hacer
			num1<- num1 + 1;
			Escribir num1;
			Si num1 MOD 2=0 Entonces
				par <- par + 1;
			SiNo
				sumaimpar<- sumaimpar + num2;
			FinSi
		FinMientras

	FinSi
	
	Escribir "El total de los impares és ", sumaimpar;
FinProceso
