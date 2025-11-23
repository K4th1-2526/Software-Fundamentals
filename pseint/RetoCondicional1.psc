Funcion resultado_dado <- lanzar_Dado(.)
	Definir resultado_dado Como Entero
	resultado_dado <- azar(6)+1
Fin Funcion

Algoritmo RetoCondicional1
	
	Definir Dado1 Como Entero 
	Definir Dado2 Como Entero 
	
	Dado1 <- lanzar_Dado(.) 
	Dado2 <- lanzar_Dado(.)
	
	Escribir "El primer Dado cayo en : ", Dado1
	Escribir "El segundo Dado cayo en : ", Dado2
	
	si(Dado1 MOD 2 == 0) Entonces
		Escribir "-> Dado1 es PAR"
	SiNo
		Escribir "-> Dado1 es IMPAR"
	FinSi
	
	si(Dado2 MOD 2 == 0) Entonces
		Escribir "-> Dado2 es PAR"
	SiNo
		Escribir "-> Dado2 es IMPAR"
	FinSi
	
	si(Dado1 == Dado2) Entonces
		Escribir "*** ¡YOU WIN ! ***"
	SiNo
		Escribir "--- GAME OVER --- "
	FinSi
	
	
	
	
FinAlgoritmo
