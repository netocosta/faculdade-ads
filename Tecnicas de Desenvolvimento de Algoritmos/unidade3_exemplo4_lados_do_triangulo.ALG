// Disciplina  : Técnicas de Desenvolvimento de Algoritmos
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo4_lados_do_triangulo"


var // Seção de Declarações das variáveis
lado1, lado2, lado3: inteiro

inicio // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Informe a seguir o tamanho dos três lados de um triangulo.")
   escreval("")

   escreval("Digite o primeiro lado")
   leia(lado1)
   escreval("Digite o segundo lado")
   leia(lado2)
   escreval("Digite o terceiro lado")
   leia(lado3)
   
   se (lado1 = lado2) e (lado2 = lado3) entao
      escreval("Triangulo equilátero:",lado1,lado2,lado3)
   senao
      se (lado1 <> lado2) e (lado2 <> lado3) entao
         escreva("Triangulo escaleno:",lado1,lado2,lado3)
      senao
         escreva("Triangulo isósceles:",lado1,lado2,lado3)
      fimse
   fimse
      
   
   
   //se (lado1 <> lado2) e (lado2 <> lado3) e (lado1 <> lado3) entao
   //   escreva("Triangulo escaleno:",lado1,lado2,lado3)
   //fimse
   
   //se ((lado1 = lado2) e (lado1 <> lado3)) entao
   //   escreva("Triangulo isósceles:",lado1,lado2,lado3)
   //fimse

   //se ((lado1 = lado3) e (lado1 <> lado2)) entao
   //   escreva("Triangulo isósceles:",lado1,lado2,lado3)
   //fimse
   
   //se ((lado2 = lado3) e (lado2 <> lado1)) entao
   //   escreva("Triangulo isósceles:",lado1,lado2,lado3)
   //fimse
   
   //se (lado1 = lado2) e (lado2 = lado3) entao
   //   escreva("Triangulo equilátero:",lado1,lado2,lado3)
   //fimse

fimalgoritmo