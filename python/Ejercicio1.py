import random

def lanzarDado():
    lanzarDado = int(random.random() * 6) +1

    return lanzarDado

# Main
dado = lanzarDado()
print("El dado es:" + str(dado))
if dado % 2 == 0:
    print("El numero es par")
else:
    print("El numero es impar")










