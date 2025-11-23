'''
   Script description:
   Crea una funcion que al ejecutar el programa genere dos 
   numeros entereos aleatorios entre 0 y 1000, los sume y muestre en pantalla el resultado.
   Recomendacion: Hacer dos funciones para el mismo proceso,
   F1: calc_add1: Sin retorno
   F2: calc_add2: Con retorno
'''

from random import randint
import time

def calc_add0():
    x = randint(1,1000)
    y = randint(1,1000)
    add = x + y
    print(f"[F0. Basic] Addition is: {add}")

def calc_add1(x, y):
    add = x + y
    print(f"[F1. Without return] Addition is: {add}")

def calc_add2(x, y):
    add = x + y
    return add

######################################### Main ##################
n1 = randint(1,1000)
n2 = randint(1,1000)

start = time.perf_counter()
calc_add0()
end = time.perf_counter()
print(f"Total time F0: {round((end - start),5)}")

start = time.perf_counter()
calc_add1(n1, n2)
end = time.perf_counter()
print(f"Total time F1: {round((end - start),5)}")

start = time.perf_counter()
answer = calc_add2(n1, n2)
print(f"[F2. With return] Addition is: {answer}")
end = time.perf_counter()
print(f"Total time F2: {round((end - start),5)}")