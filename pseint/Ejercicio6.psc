// Funcion 1 lanzar_Dado
Función resultado_dado <- lanzar_Dado(.)
Definir resultado_dado Como Entero
resultado_dado <- azar(6)+1
FinFunción

//2 Algoritmo principal Ejercicio6
Algoritmo Ejercicio6
//3.Definir variables
	Definir tiros_Totales Como Entero
	Definir suma_Total Como Entero
	Definir pares_Generados Como Entero
	Definir impares_Generados Como Entero
	Definir continuar Como Caracter
	Definir Dado1 Como Entero
	Definir Dado2 Como Entero
	Definir sumar_Tiros Como Entero
	
	//4.Inicialización de contadores y acumuladores
	tiros_Totales <- 0
	suma_Total <- 0
	pares_Generados <- 0
	impares_Generados <- 0
	continuar <- "SI"
	
	//5.Inicio de la simulación
	Escribir "INICIA EL JUEGO"
	Escribir "!LANZAR DADOS¡"
	
	//6.El ciclo continuará ejecutándose MIENTRAS la variable 'continuar' sea "SI" o "si"
	Mientras(continuar = "SI" O continuar = "si") Hacer
		Dado1 <- Lanzar_Dado(.);
	
		// 7.Lanzamiento de los dados
		Dado1 <- Lanzar_Dado(.);
		Dado2 <- Lanzar_Dado(.);
		
		// 8.Calculo la suma de los dos resultados
		sumar_Tiros <- Dado1 + Dado2
		Escribir "Lanzamiento: ", Dado1, " y ", Dado2, " (suma: ", sumar_Tiros, ")"
		
		// 9.Actualizo contadores y acumuladores
		tiros_Totales <- tiros_Totales + 1
		suma_Total <- suma_Total + sumar_Tiros	
		
		// 10.Uso MOD 2 para determinar si la SUMA es par o impar
		Si (sumar_Tiros MOD 2 = 0) Entonces
			pares_Generados <- pares_Generados + 1
		SiNo
			impares_Generados <- impares_Generados + 1
		FinSi
		
		//11. Pido al usuario si desea continuar el juego
		Escribir "¿Deseas volver a lanzar? (SI/NO)"
		Leer continuar
		Escribir "¿Deseas volver a lanzar? (SI/NO)"
		Leer continuar
	FinMientras
	
	// 12.Muestro el resumen de los resultados
		Escribir "---------------------------------"
		Escribir "Total de tiros efectuados: ", tiros_Totales
		Escribir "Suma total de los tiros efectuados: ", suma_Total
		Escribir "Total de pares generados: ", pares_Generados
		Escribir "Total de impares generados: ", impares_Generados
		Escribir " FIN DEL JUEGO "
		
		
	
FinAlgoritmo
