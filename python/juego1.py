import os
from random import randint
lives = 3
suma = 0



def roll_dice():
    dice1 = randint(1,6)
    dice2 = randint(1,6)
    return dice1,dice2

###print(roll_dice())

while suma < lives:

    suma +=1

    key = input('Pressany key to roll dices')
    dices = roll_dice()

    print(f"\n--- Lanzamiento #{suma} de {lives}---")
    print(f"Dice one:{dices[0]}")
    print(f"Dice two:{dices[1]}")
    
    if dices[0] == 6 and dices[1] == 6:
        print("\n ¡YOU WIN! ")
        print("¡Sacaste par de seis!")
        print(f"Con un total de lanzamientos: {suma}")
        break

    if suma == lives:
        print('\n GAME OVER ')
        print("No se logró sacar par de seis en los tres lanzamientos.")
        break
    
    


   











