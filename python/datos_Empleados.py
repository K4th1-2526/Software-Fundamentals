#### se usa para el año actual y calcular la edad
import datetime

####### es una lista para guardar los registro de los empleados
empleados = []

### se inicializan en 00 estas variables 
total_hombres = 0
total_mujeres = 0
suma_salarios = 0
suma_edades = 0

####### se define la funcion y se le da una instruccion
def validar_genero(mensaje):
    """ solicita el genero (M, F, O)"""
 ########### este while se usa para hacer cumplir la condicion de que si no ingresa bien el genero se seguira repitiendo
    while True:
        genero = input(mensaje).upper()
        if genero in ['M', 'F', 'O']:####### este in se usa para saber si la respuesta esta dentor de esta lista [m,f,o]
            return genero ###### esto sirve para decir que si el el dato es correcto lo devuelve al programa principal
        else:
            print("ERROR:Ingrese su genero M, F,O")

##################### ESTE WHILE SE ENCARGA DEL REGISTRO DE EMPLEADOS HASTA QUE SE DIGA QUE NO
while True:
    print("\n---REGISTRO NUEVO EMPLEADO---")
    nombre = input("Ingrese su nombre completo:")
    email = input("Ingrese su email:")
    telefono = input("Ingrese su numero de telefono:")

############ ESTO > genero = validar_genero("Genero [M-F-O]:") SIRVE PARA LLAMAR A LA FUNCION EN VEZ DE ESCRIBIRLO VARIAS VECES
    genero = validar_genero("Genero [M-F-O]:")
    ########## este whyle try sirve para preparar a una posible falla y cuando se detecte no detenga el rograma y se tenga que iniciar de nuevo
    while True:
        try:
            salario = float(input("Salario: ")) ####Este convierte  la entrada (el salario) a un número flotante(decimal)
            if salario >= 0:
                break # Si es un número válido y no negativo, salimos del bucle interno
            else:
                print("ERROR: El salario debe ser un valor no negativo.")
        except ValueError:
            print("ERROR: Salario no válido. Por favor, ingrese un número.")

    while True:
        try:
            # Pedir el año de nacimiento (AAAA)
            año_nacimiento = int(input("Año nacimiento [AAAA]: "))
            # Validar que sea un año razonable (por ejemplo, después de 1900 y no en el futuro)
            año_actual = datetime.date.today().year
            if 1900 < año_nacimiento <= año_actual:
                break
            else:
                print(f"ERROR: Año no válido. Debe estar entre 1901 y {año_actual}.")
        except ValueError:
            print("ERROR: Año no válido. Por favor, ingrese 4 dígitos (AAAA).")

    # --- 4. Procesamiento de Datos ---
    
    # Calcular la edad del empleado donde se pide la fecha de hoy que es solo el año y resta al año de nacimiento
    edad = datetime.date.today().year - año_nacimiento
    
    # Crear un diccionario para el empleado que sirve para agrupar todos estos datos en una sola variable
    empleado = {
        'nombre': nombre,
        'email': email,
        'telefono': telefono,
        'genero': genero,
        'salario': salario,
        'año_nacimiento': año_nacimiento,
        'edad': edad
    }
    
    # Agregar el diccionario a la lista de todos los empleados es decir que guarda el registro del empleado de forma permanente en la lista inicial empleados[]
    empleados.append(empleado)
    
    # Actualizar los contadores y sumas para el reporte, es decir que se le suma 1 al contador
    if genero == 'M':
        total_hombres += 1
    elif genero == 'F':
        total_mujeres += 1

    suma_salarios += salario
    suma_edades += edad

    # --- 5. Pregunta para Continuar y Validación S/s/N/n ---
    while True:
        # Preguntar si desea agregar otro empleado
        agregar_otro = input("¿Desea agregar otro empleado? [S/s/N/n]: ").upper()
        
        # Validar la respuesta
        if agregar_otro in ['S', 'N']:
            break # Si es válido, salimos de este bucle interno
        else:
            print("ERROR: Opción no válida. Por favor, ingrese S, s, N o n.")
    
    # Si la respuesta es 'N', salimos del bucle principal de registro
    if agregar_otro == 'N':
        break


# --- 6. Generación del Reporte Final ---
print("\n" + "="*40)
print("              REPORTE FINAL")
print("="*40)

# 6.1. Cuántos empleados se registraron esto le pregunta al archivador
total_empleados = len(empleados) # len() cuenta el número de elementos en la lista
print(f"* ¿Cuántos empleados se registraron?  : {total_empleados}")

# 6.2. Total por género
print(f"* Total de género M                   : {total_hombres}")
print(f"* Total de género F                   : {total_mujeres}")

# 6.3. Total Salarios a pagar
# {suma_salarios:.2f} formatea el número para mostrar dos decimales
print(f"* Total Salarios a pagar              : ${suma_salarios:,.2f}")

# 6.4. Promedio de edades
if total_empleados > 0:
    
    promedio_edades = suma_edades / total_empleados
    print(f"* Promedio de edades                  : {promedio_edades:.2f} años")
else:
    print("* Promedio de edades                  : No hay datos para calcular")

print("="*40)
         






