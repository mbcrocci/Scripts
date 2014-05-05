#include <stdio.h>

unsigned long long fibonacci (int number)
{
	int i, f;
    unsigned long long fib[number];

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
	int  number;

	printf("Introduza um numero: ");
	scanf("%d",&number);

	printf("O %d numero da sequencia de fibonacci e: %lld\n",number,fibonacci(number));
	return 0;
}
