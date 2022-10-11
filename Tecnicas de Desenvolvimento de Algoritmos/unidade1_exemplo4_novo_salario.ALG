// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 04/10/2022

algoritmo "exemplo4_novo_salario"

var
sal_atual, novo_sal: real

inicio

   escreval("Digite o salario do funcionario")
   leia(sal_atual)
       
   se sal_atual <= 500 entao
      novo_sal <- sal_atual * 1.20
   senao
      novo_sal <- sal_atual * 1.10
   fimse
   
   escreval("Novo salário: ",novo_sal)
   
fimalgoritmo