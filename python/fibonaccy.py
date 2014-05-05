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
    option = input("Quer toda a sequencia: ")

    if option.lower() == 'y' or option.lower() == 'yes':
        for i in range(1, num+1):
            print(fibo(i))

    elif option.lower() == 'n' or option.lower() == 'no':
        print("O", num, "da sequencia de fibonacci e:", fibo(num))

    else:
        print ("just say yes or no")

if __name__ == "__main__":
    run()
