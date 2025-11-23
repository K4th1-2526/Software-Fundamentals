import random
def lanzarDado():
    lanzarDado = int(random.randint(1,6)) 

    return lanzarDado

def veces():
    print("Ingrese el numero de veces a lanzar")
    veces = int(input())

    return veces

# Main
sumaTotal = 0
i = 0
numeroDeTiros = veces()
for i in range(1, numeroDeTiros + 1, 1 ):

    resultadoDeTiros = lanzarDado()
    sumaTotal = sumaTotal + resultadoDeTiros
    print("lanzamiento #" + str(i) + ":cayo en" + str(resultadoDeTiros))

print("La suma total de los resultados es:" + str(sumaTotal))
print("Numero de tiros:" + str(numeroDeTiros))

