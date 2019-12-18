Proceso Ex14
	
	count<- 0;
	
	num1<-0;
	num2<-0;
	num3<-0;
	num4<-0;
	num5<-0;
	
	Leer num1;
	Leer num2;
	Leer num3;
	Leer num4;
	Leer num5;
	
	Si num1 < num2 y num1 < num3 y num1 < num4 y num1 < num5 Entonces
		Escribir "el menor es ", num1;
	SiNo
		Si num2 < num1 y num2 < num3 y num2 < num4 y num2 < num5 Entonces
			Escribir "el menor es ", num2;
		SiNo
			Si num3 < num1 y num3 < num2 y num3 < num4 y num3 < num5 Entonces
				Escribir "el menor es ", num3;
			SiNo
				Si num4 < num1 y num4 < num2 y num4 < num3 y num4 < num5 Entonces
					Escribir "el menor es ", num4;
				SiNo
					Escribir "el menor es ", num5;
				FinSi
			FinSi
		FinSi
	FinSi
	
	Si num1 > num2 y num1 > num3 y num1 > num4 y num1 > num5 Entonces
		Escribir "el mayor es ", num1;
	SiNo
		Si num2 > num1 y num2 > num3 y num2 > num4 y num2 > num5 Entonces
			Escribir "el mayor es ", num2;
		SiNo
			Si num3 > num1 y num3 > num2 y num3 > num4 y num3 > num5 Entonces
				Escribir "el mayor es ", num3;
			SiNo
				Si num4 > num1 y num4 > num2 y num4 > num3 y num4 > num5 Entonces
					Escribir "el mayor es ", num4;
				SiNo
					Escribir "el mayor es ", num5;
				FinSi
			FinSi
		FinSi
	FinSi
	
	
FinProceso
