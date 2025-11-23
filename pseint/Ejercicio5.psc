//Funcion 1 lanzar_Dado
Función resultado_dado <- lanzar_Dado(.)
Definir resultado_dado Como Entero
resultado_dado <- azar(6)+1
FinFunción

//Funcion 2 Veces
Función numero_Tiros <- Veces(.)
Definir numero_Tiros Como Entero
Escribir 'Ingrese el numero de veces que desea lanzar el dado:'
Leer numero_Tiros
Devolver <- numero_Tiros
FinFunción

//1. Algoritmo  principal Ejercicio5
Algoritmo Ejercicio5
//2.Definir variables
	Definir N Como Entero
	Definir i Como Entero
	Definir resutado_Tiros Como Entero
	Definir contar_Pares Como Entero
	Definir contar_Impares Como Entero
//3. Inicializo los contadores de pares y impares en cero
	contar_Pares <- 0
	contar_Impares <- 0
// 4.Obtengo la cantidad de lanzamientos llamando a la función
	N <- Veces(.)
//5. Inicio el ciclo para simular todos los lanzamientos
	Para i <- 1 Hasta N Con Paso  1 Hacer
		resultado_Tiros <- lanzar_Dado(.)
//6. Uso la estructura SI-ENTONCES-SINO para clasificar el resultado.	
	SI (resultado_Tiros MOD 2 ) = 0.
		Entonces
		
		contar_Pares <- contar_Pares + 1
		Escribir "Lanzamiento # ", i, " : cayo en ", resultado_Tiros 
	   SiNo
 //7. Si el residuo NO es 0 (es 1), el número es IMPAR, incremento el contador de Impares	
		contar_Impares <- contar_Impares + 1
		Escribir "Lanzamiento # ", i, " : cayo en ", resultado_Tiros 
		
	   FinSi

	FinPara
//8. Mensajes finales para presentar el resumen de los resultados	
		Escribir "================================================="
		Escribir " REPORTE FINAL TRAS ", N," LANZAMIENTOS "
        Escribir "================================================="
		Escribir " Total de tiros PARES :" contar_pares
		Escribir "Total de tiros IMPARES " contar_impares 
		Escribir "================================================="
		
		
	
FinAlgoritmo
