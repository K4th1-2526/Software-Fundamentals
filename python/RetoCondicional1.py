import random
def lanzarDado():
    lanzarDado = int (random.random() * 6) + 1

    return lanzarDado

# Main
Dado1 = lanzarDado()
Dado2 = lanzarDado()
print (" INICIA EL JUEGO ")
print (" LANZAR DADOS ")
print("El primer Dado cayo en : " + str(Dado1))
print("El segundo Dado cayo en : " + str(Dado2))

if Dado1 % 2 == 0:
    print("Dado1 es PAR ")
else:
    print("Dado1 es IMPAR")

if Dado2 % 2 == 0:
    print("Dado2 es PAR")
else:
    print("Dado2 es IMPAR")

if Dado1 == Dado2:
    print("*** YOU WIN ***")
else:
    print("--- GAME OVER ---")








