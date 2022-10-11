// Disciplina  : Técnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo1_procedimento_sem_parametros_sem_retornos"

var
n1, n2, resultado: real

procedimento somar
   inicio
   resultado <- n1 + n2
   escreval("Soma:",resultado)
fimprocedimento

procedimento subtrair
   inicio
   resultado <- n1 - n2
   escreval("Subtracao:",resultado)
fimprocedimento

procedimento multiplicar
   inicio
   resultado <- n1 * n2
   escreval("Multiplicação:",resultado)
fimprocedimento

procedimento dividir
   inicio
   se (n1 = 0) ou (n2 = 0) entao
      escreval("Impossivel dividir")
   senao
      resultado <- n1 / n2
      escreval("Divisão:",resultado)
   fimse
fimprocedimento

inicio
   
escreval("Digite o primeiro numero")
leia(n1)
escreval("Digite o segundo numero")
leia(n2)

somar
subtrair
multiplicar
dividir


fimalgoritmo