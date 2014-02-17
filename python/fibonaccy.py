def fibo(n):
    fib = {}
    for k in range(1, n+1):
        if k <= 2:
            f = 1
        else:
            f = fib[k-1] + fib[k-2]
        fib[k] = f
    return fib[n]


def run():
    num = int(input("Introduza um numero: "))
    print("O", num, "da sequencia de fibonacci e:", fibo(num))

if __name__ == "__main__":
    run()
