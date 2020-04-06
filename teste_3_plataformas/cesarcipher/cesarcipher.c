#include <stdio.h>
#define n 30

void cesarcipher(char palavra[n]) {
    char aux[30];
    int chave=1, i;

    while(chave < 26)
    {
        i = 0;
        while(palavra[i] != '\0')
        {
            aux[i] = palavra[i] + chave;
            if((palavra[i] + chave) > 122)
            {
                aux[i] -=26;
            }
            if((palavra[i] + chave) < 97)
            {
                aux[i] += 26;
            }
            i++;
        }
        aux[i] = '\0';
        //printf("chave %d: %s ", chave, aux);
 
        if(chave%5 == 0)
        {
            //printf("\n\n");
        }
        chave++;
    }
    //printf("\n");
}

int main()
{
    char palavra[30] = "Give Corona Virus break";
    
    cesarcipher(palavra);
    
    return 0;
}
