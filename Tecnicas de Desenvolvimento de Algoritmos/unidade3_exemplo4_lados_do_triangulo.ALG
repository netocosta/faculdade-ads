// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo4_lados_do_triangulo"


var
lado1, lado2, lado3: inteiro

inicio
   escreval("Informe a seguir o tamanho dos tr�s lados de um triangulo.")
   escreval("")

   escreval("Digite o primeiro lado")
   leia(lado1)
   escreval("Digite o segundo lado")
   leia(lado2)
   escreval("Digite o terceiro lado")
   leia(lado3)
   
   se (lado1 = lado2) e (lado2 = lado3) entao
      escreval("Triangulo equil�tero:",lado1,lado2,lado3)
   senao
      se (lado1 <> lado2) e (lado2 <> lado3) entao
         escreva("Triangulo escaleno:",lado1,lado2,lado3)
      senao
         escreva("Triangulo is�sceles:",lado1,lado2,lado3)
      fimse
   fimse
      
   
   
   //se (lado1 <> lado2) e (lado2 <> lado3) e (lado1 <> lado3) entao
   //   escreva("Triangulo escaleno:",lado1,lado2,lado3)
   //fimse
   
   //se ((lado1 = lado2) e (lado1 <> lado3)) entao
   //   escreva("Triangulo is�sceles:",lado1,lado2,lado3)
   //fimse

   //se ((lado1 = lado3) e (lado1 <> lado2)) entao
   //   escreva("Triangulo is�sceles:",lado1,lado2,lado3)
   //fimse
   
   //se ((lado2 = lado3) e (lado2 <> lado1)) entao
   //   escreva("Triangulo is�sceles:",lado1,lado2,lado3)
   //fimse
   
   //se (lado1 = lado2) e (lado2 = lado3) entao
   //   escreva("Triangulo equil�tero:",lado1,lado2,lado3)
   //fimse

fimalgoritmo