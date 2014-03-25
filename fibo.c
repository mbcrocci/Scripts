#include <stdio.h>

int fibonacci (int number)
{
	int i, f, fib[number];

	for (i = 0; i <= number; i++)
	{
		if (i <= 2)
			f = 1;
		else
			f = fib[i-1] + fib[i-2];
		fib[i] = f;
	}
	return fib[number];
}

int  main()
{
	long int  number;

	printf("Introduza um numero: ");
	scanf("%ld",&number);

	int i, f, fib[number];

	for (i = 0; i <= number; i++)
	{
		if (i <= 2)
			f = 1;
		else
			f = fib[i-1] + fib[i-2];
		fib[i] = f;
	}

	printf("O %ld numero da sequencia de fibonacci e: %d\n",number,fib[number]);
	return 0;
}