def factorial(x):
    y = 1
    while (x > 0):
        y *= x
        x -= 1

    return y

def combinacao(n,p):

    return factorial(n) / ( factorial(p) * factorial(n-p))

def binomio(a, b, c):

    soma = 0
    for p in range(0,c+1):
        soma += (combinacao(c,p) * a**(c-p) * b**p)

    return soma



def user():

    n = int(input("Introduza o n: "))
    x = int(input("Introduza o x: "))
    y = int(input("Introduza o y: "))

    print("(x + y)^n = %d" % (binomio(x, y, n)))



if __name__ == "__main__":
    user()
