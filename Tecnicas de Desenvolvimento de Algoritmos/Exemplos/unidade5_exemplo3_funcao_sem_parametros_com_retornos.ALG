// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo3_funcao_sem_parametros_com_retornos"

var
lado, a: real

funcao area(Retorno: real): real
var resp: real
inicio
   resp <- lado * lado
   retorne resp
fimfuncao

inicio

   escreval("digite o lado")
   leia(lado)
   a <- area(lado)
   escreval("area =",a)
   

fimalgoritmo