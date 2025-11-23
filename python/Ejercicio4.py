import random 
def lanzarDado():
    lanzarDado = int(random.random() * 6) +1

    return lanzarDado

# Main
numeroLanzamientos = 0
Dado1 = 0
Dado2 = 0

print(" INICIA EL JUEGO ")
print(" LANZAR DADOS")
while Dado1 != 6 or Dado2 != 6:

     numeroLanzamientos = numeroLanzamientos + 1
     Dado1 = lanzarDado()
     Dado2 = lanzarDado()
     print(" Lanzamiento # " + str(numeroLanzamientos) + ": (" + str(Dado1) + ", " + str(Dado2) + ")")
print("! PAR DE SEIS ENCONTRADO ¡")
print("Se necesitaron " + str(numeroLanzamientos) + " lanzamientos. " )

