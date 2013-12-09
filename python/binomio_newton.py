def factorial(x):
    y = 1
    while (x > 0):
        y *= x
        x -= 1

    return y

def combinacao(n,p):

    return factorial(n) / ( factorial(p) * factorial(n-p))

def main ():

    n = int(input("Introduza o n: "))
    x = int(input("Introduza o x: "))
    y = int(input("Introduza o y: "))

    p = 0
    soma = 1
    while p <= n:

        comb = combinacao(n,p)
        x = x ** (n-p)
        y = y ** p

        soma = soma * (comb * x * y)
        p += 1

    print("(x + y)^n = %d" % (soma))


if __name__ == "__main__":
    main()
