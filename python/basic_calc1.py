#Algoritmo description:
'''
   Basic calc v1
   Get two numbers
   Add, subs, mult, div
   Print results
'''

# 1. Initialize vars and/or const (Inputs)
num1 = 10
num2 = 5

#2. Proceso 
add = num1 + num2
mult = num1 * num2
subs = num1 - num2
div = num1 / num2

#3. Outputs without f-string
print("Addition: ", add, type(add))
print("Subtraction: ", subs, type(subs)) 
print("Multiplication: ", mult, type(mult)) 
print("Division: ", div, type(div))

# Outputs with f-string
print(f"Addition: {add}")
print(f"Subtraction: {subs}")
print(f"Multiplication: {mult}")
print(f"Division: {div}")
