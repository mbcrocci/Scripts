#include <stdio.h>

struct concelho{
    float eleitores, brancos, nulos, validos;
};


int main ()
{
    struct concelho town;
    
    while (1)
    {
        printf("Introduza os dados para para um concelho: ");
        scanf("%f %f %f %f",&(town.eleitores),&(town.brancos),&(town.nulos),&(town.validos));
        
        if (town.eleitores == 0) break;

        
        printf("\nNumero de eleitores: %.0f\nVotos brancos: %.0f\nVotos Nulos: %.0f\nVotos Validos: %.0f\n",
               town.eleitores, town.brancos, town.nulos, town.validos);
        
        printf("\nTotal de Votos: %.0f\nPercentagem Brancos: %.2f\nPercentagem Nulos: %.2f\nPercentagem Validos: %.2f\nPercentagem Abstencao: %.2f\n\n",
               town.brancos + town.nulos + town.validos, (town.brancos / town.eleitores) * 100,
               (town.nulos / town.eleitores) * 100, (town.validos / town.eleitores) * 100,
               ((town.eleitores - (town.brancos + town.nulos + town.validos)) / town.eleitores) * 100);
    }
}