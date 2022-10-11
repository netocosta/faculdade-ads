// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 04/10/2022

algoritmo "exemplo3_media_aritmetica"


var
nota1, nota2, soma, media: real

inicio 
       escreval("digite as notas")
       leia(nota1)
       leia(nota2)
       soma <- nota1 + nota2
       
       se soma = 0 entao
          escreva("Aluno reprovado: 0")
       senao
            media <- soma / 2
            se media < 4 entao
               escreva("Aluno reprovado: ",media)
            fimse
            se media < 7 entao
                  escreva("Aluno em recuperacao: ", media)
            senao
                 escreva ("Aluno aprovado: ", media)
            fimse
       fimse

fimalgoritmo