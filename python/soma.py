from sys import argv

if len(argv) < 2:
    print("Este programa soma todos os numeros desde um 'start' ate um 'end'")
    start = int(input("Introduza o 'start': "))
    end = int(input("Introduza o 'end': "))

print("A soma de todos os numeros de %d a %d e: %d"
      % (start, end, sum(range(start, end+1)))
