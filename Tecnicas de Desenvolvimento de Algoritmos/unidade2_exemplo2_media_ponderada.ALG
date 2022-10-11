// Disciplina  : Técnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 05/10/2022

algoritmo "exemplo2_media_ponderada"


var // Seção de Declarações das variáveis
nota1, nota2, soma, media: real


inicio // Seção de Comandos, procedimento, funções, operadores, etc...
       escreval("digite a primeira nota")
       leia(nota1)
       escreval("digite a segunda nota")
       leia(nota2)
       
       soma <- (nota1 * 2) + (nota2 * 3)
       
       se soma = 0 entao
          escreva("Aluno reprovado: 0")
       senao
            media <- soma / 5
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