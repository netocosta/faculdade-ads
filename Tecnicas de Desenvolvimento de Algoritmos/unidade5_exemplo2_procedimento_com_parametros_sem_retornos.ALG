// Disciplina  : Técnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo2_procedimento_com_parametros_sem_retornos"

var
salario: real

procedimento imposto (s: real)
   var
   i: real

   inicio
   i <- s * 7/100
   escreval("Imposto:",i)
fimprocedimento

procedimento desconto (s: real)
   var
   d: real

   inicio
   d <- s * 5/100
   escreval("Desconto:",d)
fimprocedimento


inicio
   
escreval("Digite o primeiro numero")
leia(salario)

escreval("Salário:",salario)
imposto(salario)
desconto(salario)

fimalgoritmo