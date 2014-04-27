class Elecao (eleitores: Int, brancos: Float, nulos: Float, validos: Float) {

    var eleitor: Int = eleitores
    def votos_total (): Float  = {
        this.brancos + this.nulos + this.validos
    }

    def per_branco (): Float = {
        (this.brancos / this.eleitores) * 100
    }

    def per_nulos (): Float = {
        (this.nulos / this.eleitores) * 100
    }
    
    def per_validos (): Float = {
        (this.validos / this.eleitores) * 100
    }

    def abstencao (): Float = {
        ((this.eleitores - votos_total()) / this.eleitores) * 100
    }
}

object Agenda {

    def main (args: Array[String]) {
        val camara = new Elecao(100, 30, 20, 40)
        var printfs = printf("Eleitores: %d\nNumero total de votos: %.0f\n" +
            "Percentagens:\n\tVotos brancos: %.2f\n\tVotos Nulos: %.2f\n\tVotos Validos: %.2f\n"+
            "Percentagem de abstecao: %.2f",
            camara.eleitor, camara.votos_total, camara.per_branco,
            camara.per_nulos, camara.per_validos, camara.abstencao)
    
    println(printfs)
    }
}
