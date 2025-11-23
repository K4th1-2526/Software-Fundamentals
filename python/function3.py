def showGreeting ( userName ):
	msg = f"Hola  {userName}, Bienvenid(a)."
	return msg

########################################## Main ########
print("Enter your name: ")
user_name = input()
	
message = showGreeting(user_name)
print(message)