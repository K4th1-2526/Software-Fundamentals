// Funcion 1
Función resultado_dado <- lanzar_Dado(.)
Definir resultado_dado Como Entero
resultado_dado <- azar(6)+1
FinFunción

//Funcion 2
Función numero_Tiros <- Veces(.)
Definir numero_Tiros Como Entero
Escribir 'Ingrese el numero de veces que desea lanzar el dado:'
Leer numero_Tiros
Devolver <- numero_Tiros
FinFunción

//1. Algoritmo principal /Ejercio3
Algoritmo Ejercio3
	
	//2. Definir variables
	Definir numero_Tiros Como Entero
	Definir Frecuencia Como Entero
	Dimension Frecuencia[6]
	Definir i Como Entero
	Definir resutado_Tiros Como Entero
	
	//3. Inicialización del vector de Frecuencia
	Para j <- 1 Hasta 6 Con Paso 1 Hacer
		Frecuencia[j] <- 0	
	FinPara
	
	//4. Obtengo el número de tiros
	numero_Tiros <- Veces(.)
	
	Escribir '---Iniciando ', numero_Tiros, '  lanzamientos ---'
	
	//5.Bucle principal de la simulación / Repito el proceso la cantidad de veces que indicó el usuario
	Para i<-1 Hasta numero_Tiros Con Paso 1 Hacer
		resutado_Tiros <- lanzar_Dado(.)
		Frecuencia[resutado_Tiros] <- Frecuencia[resutado_Tiros] +1
		Escribir 'Lanzmiento #', i, ':cayo en ', resutado_Tiros
	FinPara
	
	Escribir '---------------------------------------------------'
	Escribir 'Los resultados son:' 
	Escribir '---------------------------------------------------'
	
	//6. Muestro la Frecuencia final de cada número
	Para j <- 1 Hasta 6 Con Paso 1 Hacer
		Escribir 'El numero ', j , ' salio ', Frecuencia[j], " veces"	
	FinPara
	
FinAlgoritmo
