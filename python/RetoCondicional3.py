Numero = 0
print("Ingrese un numero, porfavor")
Numero = int(input())
if abs(Numero) % 2 == 0:
    if Numero > 0:
        print("PAR POSITIVO")
    else:
        print("PAR NEGATIVO") 
else:
    if Numero > 0:
        print("IMPAR POSOTIVO") 
    else:
        print("IMPAR NEGATIVO")  
