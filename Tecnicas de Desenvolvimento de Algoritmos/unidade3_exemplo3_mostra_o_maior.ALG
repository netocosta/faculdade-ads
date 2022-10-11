// Disciplina  : Técnicas de Desenvolvimento de Algoritmos
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo3_mostra_o_maior"


var // Seção de Declarações das variáveis
num1, num2: real

inicio // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("digite o primeiro numero")
   leia(num1)
   escreval("digite o primeiro numero")
   leia(num2)

   se num1 = num2 entao
      escreval("Numeros iguais:",num1," e ",num2)
   senao
      se num1 > num2 entao
         escreval("O primeiro numero que é o",num1," é o maior")
      senao
         escreval("O segundo numero que é o",num2," é o maior")
      fimse
   fimse
       
fimalgoritmo