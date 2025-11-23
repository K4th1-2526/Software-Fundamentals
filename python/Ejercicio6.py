import random
def lanzar_Dado():
    lanzar_Dado = int(random.random() * 6) + 1

    return lanzar_Dado

# Main
tiros_Totales = 0
suma_Total = 0
pares_Generados = 0
impares_Generados = 0
continuar = "SI"
print("INICIA EL JUEGO")
print("!LANZAR DADOS¡")
while continuar == "SI" or continuar == "si":
    Dado1 = lanzar_Dado()
    Dado2 = lanzar_Dado()
    sumar_Tiros = Dado1 + Dado2
    print ("Lanzamiento: " + str(Dado1) + " y " + str(Dado2) + " (suma: " + str(sumar_Tiros) + ")")
    tiros_Totales = tiros_Totales + 1
    suma_Total = suma_Total + sumar_Tiros
    if sumar_Tiros % 2 == 0:
        pares_Generados =  pares_Generados + 1
    else:
        impares_Generados = impares_Generados + 1
    print("Deseas volver a lanzar (SI/NO)")
    continuar = input()
print("Total de tiros efectuados: " + str(tiros_Totales))
print("suma total de los tiros efectuados: " + str(suma_Total))
print("Total de pares generados: " + str(pares_Generados))
print("Total de impares genrados: " + str(impares_Generados))
print(" FIN DEL JUEGO ")           





























