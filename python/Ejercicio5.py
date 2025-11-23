import random
def lanzar_Dado():
    lanzar_Dado = int(random.random() * 6) + 1

    return lanzar_Dado

def veces():
    print(" Ingrese el numero de veces a lanzar")
    veces = int(input())

    return veces

# Main

contar_Pares = 0
contar_Impares = 0
n = veces()
i = 0
for i in range(1, n + 1, 1):
    resultado_Tiros = lanzar_Dado()
    if resultado_Tiros % 2 == 0:
      contar_Pares = contar_Pares + 1
    else:
      contar_Impares = contar_Impares + 1
    print("Lanzamientos # " + str(i) + " cayo en " + str(resultado_Tiros))
print("Total de Tiros Pares: " + str(contar_Pares))
print("Total de Tiros Impares: " + str(contar_Impares))








