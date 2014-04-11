#!/usr/bin/env python3

class Pessoa ():
	def __init__ (self, nome, rede, numero):
		self.nome = nome
		self.rede = rede
		self.numero = numero


def criar_contacto (lista):
	obj = Pessoa(0, 0, 0)

	obj.nome = input("Nome: ")
	obj.rede = input("Rede: ")
	obj.numero = int(input("Numero: "))


def listar_rede (lista, rede):
	for obj in lista:
		if obj.rede == rede:
			print (obj)


def mesma_casa (lista):
	for obj in lista:
		for obj2  in lista:
			if obj2.numero == obj.numero:
				print (obj.nome," vive na mesma casa que:",obj2.nome)

def menu ():
	print ("1 - Adicionar contacto")
	print ("2 - Procurar pessoas de uma rede")
	print ("3 - Procurar pessoas que vivem na mesma casa")
	print ("4 - Sair")

	op = 0
	while 1>op or op>4:
		op = int(input("Opcao: "))

	return op

def main():
	op = 0
	lista = []

	while op != 4:
		op = menu()
		if op == 1:
			lista.append(criar_contacto(lista))

		elif op == 2:
			listar_rede(lista,  input("Rede: "))

		elif op == 3:
			mesma_casa(lista)


if __name__ == '__main__':
	main()
