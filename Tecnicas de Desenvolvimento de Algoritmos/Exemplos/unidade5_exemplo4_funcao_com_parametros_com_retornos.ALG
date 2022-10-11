// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo4_funcao_com_parametros_com_retornos"

var
s, sal, ns: real

funcao aumento(sal: real): real
var aum: real
inicio
   aum <- sal * 0.1
   retorne aum
fimfuncao

funcao imposto(sal: real): real
var imp:real
inicio
   imp <- sal * 0.06
   retorne imp
fimfuncao

inicio

   escreval("digite o salario")
   leia(sal)
   s <- sal + aumento(sal)
   escreval("Aumento =",s)
   ns <- s - imposto(s)
   escreval("Novo Salario =",ns)
   

fimalgoritmo