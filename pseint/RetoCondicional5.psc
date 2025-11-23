//Algoritmo principal RetoCondicional5
Algoritmo RetoCondicional5
	//Definir variables
	Definir Identificacion Como Caracter
	Definir Nombres Como Caracter
	Definir Apellidos Como Caracter
	Definir Genero Como Caracter
	Definir Direccion Como Caracter
	Definir Año_Nacimiento Como Entero
	Definir Telefono Como Entero
	Definir Salario  Como Real
	Definir Aumento Como Real
	Definir Salario_Final Como Real
	
	// Inicializo la variable 'Aumento' en cero
	Aumento <- 0
	
	// --- Solicitar Datos del Empleado ---
	Escribir "1. Ingrese el tipo de Identificacion (CC, PS, CE, CI):"
	Leer Identificacion
	Escribir "2. Ingrese sus Nombres:"
	Leer Nombres
	Escribir "3. Ingrese sus Apellidos:"
	Leer Apellidos
	Escribir "4. Ingrese su Genero (mujer/hombre):"
	Leer Genero
	Escribir "5. Ingrese su año de nacimiento (AAAA):"
	Leer Año_Nacimiento
	Escribir "6. Ingrese su Direccion:"
	Leer Direccion
	Escribir "7. Ingrese su numero de Telefono:"
	Leer Telefono
	Escribir "8. Ingrese su Salario:"
	Leer Salario
	
	// --- Lógica de Aumento de Salario (Condicional Anidado) ---
	
	// Condicional Nivel 1: El salario es BAJO (menor o igual a $1'200.000)
	si(Salario <= 1200000) Entonces
		si (Genero == "mujer") Entonces
			Aumento <- 0.10 // 10%
		SiNo
			Aumento <- 0.08 // 8%
		FinSi
		
	SiNo
		// Condicional Nivel 2.2: ¿Está el salario en el rango MEDIO? (menor a $2'000.000)
	     Si(Salario < 2000000) Entonces
			 Aumento <- 0.05 
		 SiNo//El salario es ALTO (mayor o igual a $2'000.000)
		 
		 // Condicional Nivel 3: Aplicar el aumento más bajo según el género
		   si (Genero == "mujer") Entonces
				Aumento <- 0.03 // 3%
			SiNo
				Aumento <- 0.025 // 2.5%
			FinSi
	   FinSi
  FinSi
          // --- Cálculo Final ---
        Salario_Final <- Salario * (1 + Aumento)
        // Mostrar el resultado
		Escribir " Salario final: $",Salario_Final
		
FinAlgoritmo
