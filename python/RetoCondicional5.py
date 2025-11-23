print("Ingrese su identificacion (CC, PS, CE, CI)")
Identificacion = input()
print("Ingrese sus nombres")
Nombres = input()
print("Ingrese sus apellidos")
Apellidos = input()
print("Ingrese su direccion")
Direccion = input()
print("Ingrese su genero (hombre/mujer)")
Genero = input()
print("Ingrese su año de nacimiento")
Año_Nacimiento = int(input())
print("Ingrese su numero de telefono")
Telefono = int(input())
print("Ingrese su salario")
Salario = float(input())

if Salario <= 1200000:
    if Genero == "mujer":
        aumento = 0.10
    else:
        aumento = 0.08
else:   
    if Salario <= 2000000:
        aumento = 0.05
    else:
        if Genero == "mujer":
            aumento = 0.03
        else:
            aumento = 0.025

Salario_Final = Salario * (1 + aumento)
print("El salario final es :" + str(Salario_Final))        




