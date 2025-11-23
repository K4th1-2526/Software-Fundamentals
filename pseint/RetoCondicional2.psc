// 1.Algoritmo principal RetoCondicional2
Algoritmo RetoCondicional2
	//2.Solicitar el número al usuario por pantalla
	Definir Numero Como Entero
	
	//3. Leer el número y guardarlo en la variable 'Numero'
	Escribir "Ingrse un numero, porfavor"
	Leer Numero
	
	//4. Uso del condicional SI-ENTONCES-SINO para clasificar el número.
	Si (Abs(Numero) MOD 2 == 0) Entonces
		Escribir "El numero ",Numero," es PAR "
	SiNo
		Escribir "El numero ",Numero," es IMPAR "
	FinSi
	
FinAlgoritmo
