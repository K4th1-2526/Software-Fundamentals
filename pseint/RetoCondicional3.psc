//Algoritmo principal RetoCondicional3
Algoritmo RetoCondicional3
	//Definir variables
	Definir Numero Como Entero
	// Solicitar el número al usuario por pantalla
	Escribir "Ingrse un numero, porfavor"
	Leer Numero
	
	// Primer Condicional (Nivel 1): Verificación del caso especial CERO.
	si(Numero == 0) Entonces
		Escribir "El numero es Cero ( es numero PAR)"
	SiNo
	// Segundo Condicional (Nivel 2 ): Clasificamos si es PAR o IMPAR.
		SI (Abs(Numero) MOD 2 == 0) Entonces
			//  Condicional PARES (POSITIVO - NEGATIVO): Clasificamos el signo del número PAR.
			SI (Numero > 0 ) Entonces
				Escribir "El numero ",Numero," es PAR POSITIVO"
			SiNo
				Escribir "El numero ",Numero," es PAR NEGATIVO"
			FinSi
		SiNo
			// Condicional IMPARES (POSITIVO -NEGATIVO): Clasificamos el signo del número IMPAR.
			SI (Numero > 0 ) Entonces
				Escribir "El numero ",Numero," es IMPAR POSITIVO"
			SiNo
				Escribir "El numero ",Numero," es IMPAR NEGATIVO"	
		    FinSi
		FinSi	
	FinSi
	
FinAlgoritmo
