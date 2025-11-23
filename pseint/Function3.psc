Funcion msg <-showGreeting ( userName )
	Escribir "Hola ", userName, " ,Bienvenid@"
Fin Funcion

Algoritmo Function3
	Definir userName Como Caracter
	Escribir "Enter your name: "
	Leer user_name
	
	message <- showGreeting(user_name)
	Escribir message
FinAlgoritmo