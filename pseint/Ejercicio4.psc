 // Funcion 1 lanzar_Dado
	Función resultado_dado <- lanzar_Dado(.)
	Definir resultado_dado Como Entero
	resultado_dado <- azar(6)+1
FinFunción
//1.Algoritmo principal/Ejercicio4
Algoritmo Ejercicio4
	
	//2.Definir  variables
	Definir Dado1 Como Entero
	Definir Dado2 Como Entero
	Definir numero_Lanzamientos Como Entero
	
	//3. Le doy inicio al juego
	Escribir "--- INICIA EL JUEGO ---"
	Escribir " LANZAR DADOS "
	
	//4.Uso el ciclo Repetir, que garantiza que el juego se lance al menos una vez
	Repetir
		
		numero_Lanzamientos <- numero_Lanzamientos + 1
		Dado1 <- lanzar_Dado(.)
		Dado2 <- lanzar_Dado(.)
	//5.Muestro al usuario el resultado de este lanzamiento
		Escribir "Lanzamiento # ", numero_Lanzamientos, ": cayo en (",Dado1, "," Dado2, ")"
	//6.El ciclo continuará lanzando los dados Hasta Que ambos dados caigan en 6
	Hasta Que  (Dado1 = 6 Y Dado2 = 6)
	
	//7.Mensajes finales para indicar que la condición de salida se cumplió
		Escribir "======================"
		Escribir " ¡ JUEGO FINALIZADO ¡ "
		Escribir " Se obtuvo  el PAR DE SEIS (6,6)."
		Escribir " Se necesitaron ", numero_Lanzamientos, " lanzamientos ." 
		Escribir "======================"
	
	
FinAlgoritmo
