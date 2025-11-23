//0. Funcion 1.
Funcion resultado_dado <- lanzarDado (.)
	Definir resultado_dado Como Entero;
	resultado_dado <- azar (6) +1;	
Fin Funcion

// Algoritmo principal / Ejercicio1
Algoritmo Ejercicio1
	//1.Definir la variable 
	Definir Dado Como Entero
	
	//2.llamar a la Funcion y guarda el valor
	Dado <- lanzarDado(.);
	
	Escribir "El Dado es : ", Dado;
	
	//3.Verificar si es par o impar
	SI (Dado MOD 2 = 0) Entonces
		Escribir "El numero, dado es par"
	SiNo
		
		Escribir "El numero, dado es impar"
	FinSi
		
FinAlgoritmo
