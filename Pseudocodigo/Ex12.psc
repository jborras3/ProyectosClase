Proceso Ex12
	
	count<- 0;
	sump<- 0;
	sumi<- 0;
	
	Repetir
		Escribir count;
			Si count MOD 2=1 Entonces
				sumi<-count + sumi;
			SiNo
				sump<-count + sump;
			FinSi
		count<- count + 1;
	Hasta Que  count = 100
	
	Escribir sumi;
	Escribir sump;
	
FinProceso
