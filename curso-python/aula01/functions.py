#!/usr/bin/env python3

# abaixo temos uma funcao chamada modify_string, que aceita uma variavel que sera chamada original no escopo da funcao.
# algo indentado com 4 espacos embaixo da definicao da funcao esta dentro do escopo dela.

def modify_string(original):
	original += " que foi modificada"		# no momento somente a copia local dessa string foi modificada

	
def modify_string_return(original):
	original += " que foi modificada"
	return original							# entretanto nos podemos retornar a copia local para o chamador

	
test_string = "Esta eh uma string de teste"

modify_string(test_string)
print(test_string)

test_string = modify_string_return(test_string)
print(test_string)
	
