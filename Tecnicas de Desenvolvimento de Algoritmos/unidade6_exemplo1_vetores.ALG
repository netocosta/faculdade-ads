// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 07/10/2022

algoritmo "exemplo1_vetores"

var
minhaVariavel: vetor[1..10] de inteiro
i: inteiro

inicio

// gravacao
para i <- 1 at� 5 passo 1 fa�a
   escreval("Digite o ",i,"� numero")
   leia(minhaVariavel[i])
fimpara

//leitura
para i <- 1 at� 5 passo 1 fa�a
   escreval("Conteudo da posi��o: ",i)
   escreval(minhaVariavel[i])
fimpara


fimalgoritmo