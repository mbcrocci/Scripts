class Eleicao ():

    def __init__(self, eleitores, brancos, nulos, validos):
        self.eleitores = eleitores
        self.brancos = brancos
        self.nulos = nulos
        self.validos = validos

    def votos_total(self):
        return self.brancos + self.nulos + self.validos

    def per_brancos(self):
        return (self.brancos / self.eleitores) * 100

    def per_nulos(self):
        return (self.nulos / self.eleitores) * 100

    def per_validos(self):
        return (self.validos / self.eleitores) * 100

    def abstencao(self):
        return ((self.eleitores - self.votos_total()) / self.eleitores) * 100


def main():
    camara = Eleicao(0, 0, 0, 0)
    camara.eleitores = float(input("Numero de eleitores: "))
    camara.brancos = float(input("Numero de votos brancos: "))
    camara.nulos = float(input("Numero de votos nulos: "))
    camara.validos = float(input("Numero de votos validos: "))

    print " Numero de eleitores de um municipio: ", camara.eleitores
    print "Numero total de votos: ", camara.votos_total()
    print "Percentagem de votos brancos: ", camara.per_brancos()
    print "Percentagem de votos nulos: ", camara.per_nulos()
    print "Percentagem de votos validos: ", camara.per_validos()
    print "Percentagem de abstencao: ", camara.abstencao()

if __name__ == "__main__":
    main()
