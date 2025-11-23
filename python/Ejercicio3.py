import random
def lanzarDado():
    lanzarDado = int(random.random() + 6) + 1

    return lanzarDado

def veces():
    print("Ingrese el numero de veces a lanzar")
    veces = int(input())

    return veces


# Main
random.seed()  #prepare random number generator

frecuencia = [0] * (6)

for j in range(0, 5 + 1, 1):
    frecuencia[j] = 0
numeroDeTiros = veces()
for i in range(1, numeroDeTiros + 1, 1):
    resultadoDeTiros = int(random.random() * 6) + 1
    frecuencia[resultadoDeTiros - 1] = frecuencia[resultadoDeTiros - 1] + 1
    print("Lanzamientos #" + str(i) + ":cayo en: " + str(resultadoDeTiros))
print("----- Los resultados son -----")
for j in range(0, 5 + 1, 1):
    print("El numero " + str(j + 1) + " salio: " + str(frecuencia[j]) + " Veces")
