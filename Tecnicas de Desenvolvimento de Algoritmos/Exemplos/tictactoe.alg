Algoritmo "semnome"

procedimento mostrarQuadro
inicio
   para i de 1 ate 3 passo 1 faca
      para j de 1 ate 3 passo 1 faca
         se j < 3 entao
            escreva(jogo[i, j], " | ")
         senao
            escreva(jogo[i, j])
         fimse
      fimpara
      escreval("")
   fimpara
fimprocedimento


procedimento comecarPartida
var
   x: inteiro
inicio
   x <- 1
   para i de 1 ate 3 passo 1 faca
      para j de 1 ate 3 passo 1 faca
         jogo[i, j] <- NumPCarac(x)
         x <- x + 1
      fimpara
   fimpara

   escreva("Informe o Nome do Jogador 1: ")
   leia(jogador1)
   escreva("Informe o Nome do Jogador 2: ")
   leia(jogador2)
   escreval()

   escreval("AGORA VAMOS AO JOGO!")
   escreval()

   final <- FALSO
   daVez <- ""
   desenho <- ""
   conta1 <- 0
   conta2 <- 0
fimprocedimento


procedimento escolherJogadorDaVez
inicio
   se (daVez = "") OU (daVez = jogador2) entao
      daVez <- jogador1
      desenho <- "O"
      conta1 <- conta1 + 1
   senao
      daVez <- jogador2
      desenho <- "X"
      conta2 <- conta2 + 1
   fimse

   escreval("É a vez de ",daVez," (",desenho,") realizar a jogada. Escolha uma posição.")
   escreval()
   mostrarQuadro
   escreval()

fimprocedimento


procedimento jogar
var
   condicao: vetor[1..8] de logico
inicio
   leia(posicao)
   se (posicao = 1) OU (posicao = 2) OU (posicao = 3) entao
      se(jogo[1, posicao] = "O") OU (jogo[1, posicao] = "X") entao
      MudaCor("Vermelho", "Frente")
      escreval("Posição já selecionada. Escolha outra posição.")
      jogar
   MudaCor("Branco", "Frente")
senao
   jogo[1, posicao] <- desenho
fimse
senao
   se (posicao = 4) OU (posicao = 5) OU (posicao = 6) entao
      se(jogo[2, posicao-3] = "O") OU (jogo[2, posicao-3] = "X") entao
      MudaCor("Vermelho", "Frente")
      escreval("Posição já selecionada. Escolha outra posição.")
      jogar
   MudaCor("Branco", "Frente")
senao
   jogo[2, posicao-3] <- desenho
fimse
senao
   se(jogo[3, posicao-6] = "O") OU (jogo[3, posicao-6] = "X") entao
   MudaCor("Vermelho", "Frente")
   escreval("Posição já selecionada. Escolha outra posição.")
   jogar
MudaCor("Branco", "Frente")
senao
   jogo[3, posicao-6] <- desenho
fimse
fimse
fimse

// condicoes linhas
condicao[1] <- (jogo[1,1] = jogo[1,2]) E (jogo[1,2] = jogo[1,3])
condicao[2] <- (jogo[2,1] = jogo[2,2]) E (jogo[2,2] = jogo[2,3])
condicao[3] <- (jogo[3,1] = jogo[3,2]) E (jogo[3,2] = jogo[3,3])
// condicoes colunas
condicao[4] <- (jogo[1,1] = jogo[2,1]) E (jogo[2,1] = jogo[3,1])
condicao[5] <- (jogo[1,2] = jogo[2,2]) E (jogo[2,2] = jogo[3,2])
condicao[6] <- (jogo[1,3] = jogo[2,3]) E (jogo[2,3] = jogo[3,3])
// condicoes diagonal
condicao[7] <- (jogo[1,1] = jogo[2,2]) E (jogo[2,2] = jogo[3,3])
condicao[8] <- (jogo[3,1] = jogo[2,2]) E (jogo[2,2] = jogo[1,3])

para i de 1 ate 8 passo 1 faca
   se(condicao[i] = VERDADEIRO) entao
      final <- VERDADEIRO
   fimse
fimpara
fimprocedimento

procedimento resultadoFinal
inicio
   escreval()
   escreval()

   se (conta1 > conta2) E (conta1+conta2 < 9) entao
      escreval("VENCEDOR: ",jogador1)
      escreval()
      escreval("PARABÉNSS!!")
   senao
      se (conta1+conta2 = 9) entao
         escreval("DEU EMPATE!")
      senao
         escreval("VENDEDOR: ",jogador2)
         escreval()
         escreval("PARABÉNSS!!")
      fimse
   fimse
   escreval()
   escreva("Iniciar uma nova partida? (S ou N)? ")
   leia(novo)
fimprocedimento

Var

   jogo: vetor[1..3, 1..3] de caractere
   posicao: inteiro
   i, j: inteiro
   novo, desenho, daVez, jogador1, jogador2: caractere
   final: logico
   conta1, conta2: inteiro


Inicio

   escreval("BEM VINDO AO TIC-TAC-TOE!")
   escreval()

   repita
      comecarPartida
      repita
         escolherJogadorDaVez
         jogar
         se (conta1 + conta2) = 9 entao
            final <- VERDADEIRO
         fimse
      ate final = VERDADEIRO
      resultadoFinal
   ate novo = "N"

Fimalgoritmo
