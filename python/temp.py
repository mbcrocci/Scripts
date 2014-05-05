#!/usr/bin/env python3

def cel_to_fahr (cel):
    return (9.0/5.0) * cel + 32

def cel_to_kel (cel):
    return cel + 273.15

def fahr_to_cel (fahr):
    return (fahr - 32) * (5.0/9.0)

def fahr_to_kel (fahr):
    return (fahr - 32) * (5.0/9.0) + 273.15

def kel_to_cel (kel):
    return kel - 273.15

def kel_to_fahr (kel):
    return (9.0/5.0) * (kel - 273.15) + 32

def menu ():
    print("1 - Celsius to Fahrenheit")
    print("2 - Celsius to Kelvin")
    print("3 - Fahrenheit to Celsius")
    print("4 - Fahrenheit to Kelvin")
    print("5 - Kelvin to Celsius")
    print("6 - Kelvin to Fahrenheit")
    print("7 - Exit")
    print ("")

    op = 0
    while op < 1 or 7 < op:
        op = int(input("> "))

    return op

def main ():
    while True:
        op = menu()
        if op == 7:
            exit()

        temp = int(input("Temperature: "))

        if op == 1:
            print (temp, "celsius in fahrenheit: ", cel_to_fahr(temp))

        elif op == 2:
            print (temp, "celsius in kelvin: ", cel_to_kel(temp))

        elif op == 3:
            print (temp, "fahrenheit in celsius: ", fahr_to_cel(temp))

        elif op == 4:
            print (temp, "fahrenheit in kelvin: ", fahr_to_kel(temp))

        elif op == 5:
            print (temp, "kelvin in celsius: ", kel_to_cel(temp))

        elif op == 6:
            print (temp, "kelvin in fahrenheit: ", kel_to_fahr(temp))

        print("")

if __name__ == "__main__":
    main()
