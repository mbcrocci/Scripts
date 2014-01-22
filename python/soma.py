from sys import argv

def soma (start, end):
  soma = 0
  for i in range(start, end+1):
    soma += i

  return soma


if len(argv) < 2:
  print ("Este programa soma todos os numeros desde um 'start' ate um 'end'")
  start = int( input( "Introduza o 'start': " ))
  end   = int( input( "Introduza o 'fim': "))

else:
  start = int( argv[1] )
  end   = int( argv[2] )

result = soma(start, end)

print ("A soma de todos os numeros de %d a %d e: %d" % (start, end, result))

