//1.Funcion lanzar_Dado
Función resultado_dado <- lanzar_Dado(.)
	Definir resultado_dado Como Entero
	resultado_dado <- azar(6)+1
FinFunción

//2.Funcion Veces
Función numero_Tiros <- Veces(.)
	Definir numero_Tiros Como Entero
	Escribir 'Ingrese el numero de veces que desea lanzar el dado:'
	Leer numero_Tiros
	Devolver <- numero_Tiros
FinFunción

//3.Algoritmo principal / Ejercicio2
Algoritmo Ejercio2
	
	//4. Definir las variables
	Definir numero_Tiros Como Entero
	Definir suma_Total Como Entero
	Definir i Como Entero
	Definir resutado_Tiro Como Entero
	//4.Inicializo el acumulador de la suma en cero
	suma_Total <- 0
	
	//5. Llamo a la función 'Veces'
	numero_Tiros <- Veces(.)
	
	//6. Mensaje para el usuario para indicar que el proceso va a empezar
	Escribir '---Iniciando ', numero_Tiros, '  lanzamientos ---'
	
	//7. Uso el ciclo 'Para' para repetir el lanzamiento la cantidad de veces que indicó el usuario
	Para i<-1 Hasta numero_Tiros Con Paso 1 Hacer
		resutado_Tiro <- lanzar_Dado(.)
		suma_Total <- suma_Total+resutado_Tiro
		Escribir 'Lanzmiento #', i, ':cayo en ', resutado_Tiro
	FinPara
	
	//8. Línea separadora para dar orden
	Escribir '---------------------------------------------------'
	
	//9.Muestro el resultado final de la suma
	Escribir 'La SUMA TOTAL de los valores generados es:', suma_Total
FinAlgoritmo
