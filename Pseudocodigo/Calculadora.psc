SubProceso menu 
	
	Limpiar Pantalla;
	
	Escribir "Selecciona";
	
	Escribir "1. Suma";
	
	Escribir "2. Resta";
	
	Escribir "3. Multiplicar";
	
	Escribir "4. Dividir";
	
	Escribir "5. Salir";
	
FinSubProceso

Funcion resultado <- multiplicar (num1,num2) //Funcion multiplicacion
	
	resultado <- num1 * num2 ;
	Escribir resultado;
	
FinFuncion

Funcion resultado <- dividir (num1,num2) //Funcion division
	
	resultado <- num1 / num2 ;
	Escribir resultado;
	
FinFuncion

Funcion resultado <- suma (num1,num2) //Funcion suma
	
	resultado <- num1 + num2 ;
	Escribir resultado;
	
FinFuncion

Funcion resultado <- resta (num1,num2) //Funcion resta
	
	resultado <- num1 - num2 ;
	Escribir resultado;
	
FinFuncion

Proceso Calculadora
	
	num1<-0;
	num2<-0;
	resultado <- 0;		
	
	Repetir
		menu;
		Escribir "Elige opcion:";
		Leer opcion;
		Segun opcion HACER
			1:
				Escribir "Introduce los dos numeros";
				Leer num1, num2;
				resultado <- suma (num1, num2); //llama funcion con salida
				Escribir "Presiona una tecla para ir al menu";
				Leer tecla;
				
			2:
				Escribir "Introduce los dos numeros";
				Leer num1, num2;
				resultado <- resta (num1, num2); //llama funcion con salida
				Escribir "Presiona una tecla para ir al menu";
				Leer tecla;
				
			3:
				Escribir "Introduce los dos numeros";
				Leer num1, num2;
				resultado <- multiplicar (num1, num2); //llama funcion con salida
				Escribir "Presiona una tecla para ir al menu";
				Leer tecla;
				
			4:
				Escribir "Introduce los dos numeros";
				Leer num1, num2;
				resultado <- dividir (num1, num2); //llama funcion con salida
				Escribir "Presiona una tecla para ir al menu";
				Leer tecla;
				
			5:
				
			De Otro Modo:
				Escribir "Opcion incorrecta";
		FinSegun

	Hasta Que opcion = 5;
	
FinProceso
