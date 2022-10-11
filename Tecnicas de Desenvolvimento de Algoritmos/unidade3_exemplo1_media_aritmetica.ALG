// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 06/10/2022

algoritmo "exemplo2_media_aritmetica"


var
nota1, nota2, nota3, soma, media, nf: real

inicio 
       escreval("digite a primeira nota")
       leia(nota1)
       escreval("digite a segunda nota")
       leia(nota2)
       escreval("digite a terceira nota")
       leia(nota3)
       
       soma <- nota1 + nota2 + nota3
       media <- soma / 3
       
       se (media < 3) entao
         escreval("Aluno reprovado: ",media)
       senao
         se (media < 7) entao
            nf <- 12 - media
            escreval("Aluno em recuperacao: ", media)
            escreval("Nota a ser tirada na recuperacao: ", nf)
         senao
            escreval("Aluno aprovado: ", media)
         fimse
       fimse
       
fimalgoritmo