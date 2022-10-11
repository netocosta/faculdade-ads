// Disciplina  : Tecnicas de Desenvolvimento de Algoritmos
// Autor(a)    : Walmirino Neto
// Data atual  : 05/10/2022

algoritmo "exemplo3_desconto_produto"


var 
preco, percentual, novo_preco: real


inicio 

       escreval("digite o preco do produto")
       leia(preco)
       escreval("digite o percentual do desconto")
       leia(percentual)

       novo_preco <- preco - ((preco * percentual) / 100)
       
       escreval("Novo Preço: ", novo_preco)

fimalgoritmo