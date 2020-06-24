#include <stdio.h>
#include <stdlib.h>

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int w; int h; float data[100000]; } ;
typedef  TYPE_1__ image ;

int main() {
  image a;
  int x1;
  int y1;
  int x2;
  int y2;
  float r;
  float g;
  float b;


 FILE *pont_arq; // cria variável ponteiro para o arquivo
  char palavra[20]; // variável do tipo string
  
  //abrindo o arquivo com tipo de abertura w
  pont_arq = fopen("arquivo_palavra.txt", "w");
  
  //testando se o arquivo foi realmente criado
  if(pont_arq == NULL)
  {
  printf("Erro na abertura do arquivo!");
  return 1;
  }
  
  printf("Escreva uma palavra para testar gravacao de arquivo: ");
  scanf("%s", palavra);
  
  //usando fprintf para armazenar a string no arquivo
  fprintf(pont_arq, "%s", palavra);
  
  //usando fclose para fechar o arquivo
  fclose(pont_arq);
  
  printf("Dados gravados com sucesso!");

  draw_box(a, x1, y1, x2, y2, r, g, b);
  return 0;
}
