Funcion showGreeting ( userName )
	Escribir "Hola ", userName, " ,Bienvenid@"
Fin Funcion

Algoritmo Function2
	Definir userName Como Caracter
	Escribir "Enter your name:"
	Leer user_name
	
	showGreeting(user_name)
FinAlgoritmo
