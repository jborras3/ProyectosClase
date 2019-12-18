Funcion ok <- comprobarData (dia,mes,any,comprovador,ok)
	
	Si any >=1 Entonces //comprovar años
		comprovador <-comprovador + 1;
	FinSi
	
	Si mes <= 12 Y mes >= 1 Entonces //comprovar meses
		comprovador <-comprovador + 1;
	FinSi
	
	Si mes = 2 Y any mod 4 = 0 Entonces //comprovar dias febrero bisiesto
		Si dia <= 29 Y dia >= 1 Entonces
			comprovador <-comprovador + 1;
		FinSi	
	FinSi
	
	Si mes = 2 Y any mod 4 <> 0 Entonces //comprovar dias febrero normal
		Si dia <= 28 Y dia >= 1 Entonces
			comprovador <-comprovador + 1;
		FinSi	
	FinSi
	
	Si mes = 4 O mes = 6 O mes = 9 O mes = 11 y mes <> 2 Entonces //comprovar dias otros meses
		Si dia <= 30 Y dia >= 1 Entonces
			comprovador <-comprovador + 1;
		FinSi
	SiNo
		Si dia <= 31 Y dia >= 1 Y mes <> 2 Entonces
			comprovador <-comprovador + 1;
		FinSi
	FinSi
	
	si comprovador = 3 Entonces //comprovador para el contador si es verdadero
		ok  <- Verdadero;
	SiNo
		ok <- Falso;
		Escribir "Data erronea";
		comprovador <-0;
	FinSi
FinFuncion

Proceso Comprobador_dia
	
	comprovador <- 0;
	dia <- 0;
	mes <- 0;
	any <- 0;
	ok<- Falso ;
	
	Repetir
		
		Escribir"Quin dia es?";
		
		Escribir "Introdueix data per dia: ";
		
		Leer dia;
		
		Escribir"Mes:";
		
		Leer mes;
		
		Escribir"Any:";
		
		Leer any;
		
		ok = comprobarData(dia,mes,any,comprovador,ok);
		
	Hasta Que ok = Verdadero;
	
	Escribir "Data correcte";
	
FinProceso
