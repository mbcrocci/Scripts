#!/usr/bin/env python3
class Criminoso():
	def __init__(self, noma, altura, peso):
		self.noma = noma
		self.altura = altura
		self.peso = peso
		

def main ():
	lista_de_criminosos = []



	obj = Criminoso("Joao Ratao", 175, 120)
	lista_de_criminosos.append(obj)
	obj = Criminoso("Gato das botas", 199, 67)
	lista_de_criminosos.append(obj)
	obj = Criminoso("Etlvina Seabra", 156, 45)
	lista_de_criminosos.append(obj)

	for obj in lista_de_criminosos:
		print ("Nome:", obj.noma)
		print ("Altura:", obj.altura)
		print ("Peso:", obj.peso)



if __name__ == '__main__':
	main()