// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 04/10/2022

algoritmo "exemplo5_positivo_negativo_zero"

var
num1, num2, diferenca: real

inicio 

   escreval("Digite o primeiro numero")
   leia(num1)
   escreval("Digite o segundo numero")
   leia(num2)
   
   diferenca <- num1-num2
   
   se diferenca < 0 entao
      escreval("Diferenca NEGATIVA: ",diferenca)
   senao
      se diferenca > 0 entao
         escreval("Diferenca POSITIVA: ",diferenca)
      senao
         escreval("Diferenca eh ZERO")
      fimse
   fimse
       
fimalgoritmo