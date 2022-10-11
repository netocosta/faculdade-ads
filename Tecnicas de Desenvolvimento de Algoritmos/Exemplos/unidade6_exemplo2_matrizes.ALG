// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 07/10/2022

algoritmo "exemplo2_matrizes"

var
minhaVariavel: vetor[1..3, 1..2] de inteiro
i: inteiro

inicio

// gravacao
para i <- 1 até 5 passo 1 faça
   escreval("Digite o ",i,"º numero")
   leia(minhaVariavel[i])
fimpara

//leitura
para i <- 1 até 5 passo 1 faça
   escreval("Conteudo da posição: ",i)
   escreval(minhaVariavel[i])
fimpara


fimalgoritmo