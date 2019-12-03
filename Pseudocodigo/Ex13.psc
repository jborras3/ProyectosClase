Proceso Ex13
	
	count<- 2;
	mp2<- 0;
	mp3<- 0;
	tm<- 0;
	
	Repetir
		
		
		Si count MOD 3=0 Entonces
			
			Escribir count;
			tm<-tm + 1;
			
		FinSi
		
		
		Si count MOD 2=0 Entonces
			
			Escribir count;
			tm<-tm + 1;
		
		FinSi
		
		count<- count +1;
		
	Hasta Que count >= 100
	
	Escribir tm;
	
FinProceso
