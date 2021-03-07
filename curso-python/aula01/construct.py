#!/usr/bin/env python3

import sys	# usado para a funcao sys.exit

target_int = input("Quantos números inteiros voce vai digitar? ")

# Por hora a variavel target_int contem uma representacao de string que o usuario digitou.
# Nos vamos tentar converter para um inteiro, se nao for possivel, eh gerada uma excecao

try:
	target_int = int(target_int)
except ValueError:
	sys.exit("Voce deve digitar um número inteiro!")
	
ints = list()
count = 0

while count < target_int:
	new_int = input("Por favor digite o {0} inteiro: ".format(count+1))
	isint = False
	try:
		new_int = int(new_int)
		isint = True
	except:
		print("Voce deve digitar um numero inteiro!!!")
		
	if isint == True:
		ints.append(new_int)
		count += 1

print("usando um loop for")
for value in ints:
	print(str(value))



