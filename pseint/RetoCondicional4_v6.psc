Algoritmo RetoCondicional4_v6
    
    Definir num1, num2, resultado Como Real
    Definir opt Como Entero
    

    Limpiar Pantalla;
    
    Escribir "Enter value to number 1: "
    Leer num1;
    Escribir "Enter value to number 2: "
    Leer num2;
  
    MathMenu;
    
    Escribir "Press any option [1 - 5]: "
    Leer opt;
	
    
    Si opt >= 1 Y opt <= 4 Entonces
        
        resultado <- CalcSimple(num1, num2, opt)
        Escribir "Answer: ", resultado;
    Sino
        Si opt = 5 Entonces
            
            CalcAll(num1, num2);
        Sino
            Escribir "Invalid option !!!"
        FinSi
    FinSi
    
FinAlgoritmo


SubProceso MathMenu
    Escribir "Math menu:"
    Escribir "  [1]. Add"
    Escribir "  [2]. Subs"
    Escribir "  [3]. Mult"
    Escribir "  [4]. Div"
    Escribir "  [5]. All"
FinSubProceso


SubProceso resultado <- CalcSimple(n1, n2, op)
    Definir res Como Real
   
    Segun op Hacer
        1: // Add
            res <- n1 + n2
        2: // Subs
            res <- n1 - n2
        3: // Mult
            res <- n1 * n2
        4: // Div
            Si n2 <> 0 Entonces
                res <- n1 / n2
            Sino
                Escribir "It is not possible to divide by zero"
                res <- 0 
            FinSi
        De Otro Modo:
            
            Escribir "Invalid option within CalcSimple !!!" 
            res <- 0
    FinSegun
    resultado <- res 
FinSubProceso

SubProceso CalcAll(n1, n2)
    Escribir "Add: ", n1 + n2
    Escribir "Sub: ", n1 - n2
    Escribir "Mul: ", n1 * n2
    
    Si n2 <> 0 Entonces
        Escribir "Div: ", n1 / n2
    Sino
        Escribir "Div: No division by zero"
    FinSi
FinSubProceso