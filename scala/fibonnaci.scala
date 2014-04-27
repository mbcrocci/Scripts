object Fibonnaci {
    def fibo (number: Int): BigInt = {
        var lista = Array()
        var f = 0

        for (k <- 1 to number) {
            if (k <= 2)
                f = 1
            else
                f = lista(k-1) + lista(k-2)
            lista(k) +: f
        }
        return lista(number)
    }

    def main () = {
        println("O 10 numero da seq. de fibonnaci e: ${fibo(10)}")
    }
}
