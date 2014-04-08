import time
class Tempo:
	"""Caracteristicas da hora de saida de um voo"""
	def __init__ (self, hora, minuto):
		self.hora = hora
		self.minuto = minuto

class Voo():
	"""Conjunto de caracteristicas de um voo"""
	def __init__(self, numero, companhia, destino, tempo):
		self.numero = numero
		self.companhia = companhia
		self.destino = destino
		self.tempo = tempo # sera um objecto da class Tempo


def hora_actual():
	"""Devolve a hora do computador"""
	return time.localtime()

def menu ():
	"""Mostra um menu para o utilizador escolher o que fazer"""
	tempo = hora_actual()

	print 'Hora: %d:%d' %(tempo.tm_hour, tempo.tm_min)

	print "1 - Introduzir novo voo"
	print "2 - Listar todos os voos"
	print "3 - Listar proximos voos"
	print "4 - Actualizar tabela de voos"
	print "5 - Terminar"

	op = 0
	while op<1 or  op>5:
		op = int(raw_input("Opcao: ")) 

	return op

def adicionar_voo():a
	"""Pedes todos os atributos de um novo Voo"""

	novo = Voo(0, 0, 0, 0) #Cria nova instacia da class Voo
	novo.numero = int(raw_input('Introduza o numero do voo: '))
	novo.companhia = raw_input('Introduza a companhia: ')
	novo.destino = raw_input('Introduza o destino: ')
	novo.tempo = Tempo(0, 0)
	novo.tempo.hora = int(raw_input('Introduza a hora: '))
	novo.tempo.minuto = int(raw_input('Introduza o minuto: '))

	return novo

def mostra_todos(lista):
	"""Percorre a lista inteira e mostra de forma organizada"""
	for obj in lista:
		print 'Numero:', obj.numero
		print 'Companhia:', obj.companhia
		print 'Destino:', obj.destino
		print 'Hora: %d:%d' %(obj.tempo.hora, obj.tempo.minuto)
		print '\n'

def mostra_proximos(lista):
	"""Ainda precisa de ser feita"""
	pass

def actualiza(lista):
	"""Percorre a lista e compara a hora dos voos como a actual,
		se for maior removeos da lista"""

	temp = hora_actual()
	for obj in lista:
		if obj.tempo.hora < temp.tm_hour:
			lista.remove(obj)

		elif obj.tempo.hora == temp.tm_hour and obj.tempo.minuto < temp.tm_min:
			lista.remove(obj)

def main ():
	"""Funcao principal:  Chama as diversas funcoes dependendo do que foi
		devolvido pelo menu"""

	lista_de_voos = [] # lista de todos os voos
	j = 0
	while j != 5:
		j = menu()

		if j == 1:
			lista_de_voos.append(adicionar_voo())

		elif j == 2:
			mostra_todos(lista_de_voos)

		elif j == 3:
			mostra_proximos(lista_de_voos)

		elif j ==  4:
			actualiza(lista_de_voos)

if __name__ == "__main__":
    main()