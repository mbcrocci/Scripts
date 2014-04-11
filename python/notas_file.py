class Aluno ():
	def __init__ (self, num, notas):
		self.num = num
		self.notas = notas

def main ():
	f = open("notas.txt", 'rw')

	for line in f:
		