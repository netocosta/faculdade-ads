// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 04/10/2022

algoritmo "exemplo2_divisao"


var
n1, n2, d: real


inicio 
       escreval("digite dois numeros")
       leia(n1)
       leia(n2)
       se (n1 = 0) ou (n2 = 0) entao
              escreva("impossivel calcular, um dos numeros eh 0")
       senao
              d <- n1 / n2
              escreva(d)
       fimse

fimalgoritmo