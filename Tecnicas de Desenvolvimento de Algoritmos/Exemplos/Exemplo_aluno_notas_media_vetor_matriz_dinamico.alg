Algoritmo "semnome"

Var
aluno: vetor[1..10] de caractere
nota: vetor[1..10, 1..5] de real
media: vetor[1..10] de real
i, j: inteiro
qtdNotas: inteiro
qtdAlunos: inteiro
somaNotas: real


Inicio

// ativa a variavel de verificação
i <- 0
escreval("Quantos alunos você deseja incluir? (até 10)")
// repete esse bloco até o usuário inserir a quantidade menor ou igual a 10
repita
   // na primeira vez não mostra essa mensagem
   se i > 0 entao
      escreval("QUANTIDADE INVÁLIDA. Quantos alunos você deseja incluir?")
   fimse
   leia(qtdAlunos)
   // incrementa a variavel de verificação para mostrar a mensagem de QUANTIDADE INVALIDA
   i <- i + 1
ate qtdAlunos <= 10

// igual o bloco anterior
i <- 0
escreval("Quantas notas cada aluno terá? (até 5)")
repita
   se i > 0 entao
      escreval("QUANTIDADE INVÁLIDA. Quantos alunos você deseja incluir?")
   fimse
   leia(qtdNotas)
   i <- i + 1
ate qtdNotas <= 5


// solicita o nome de todos os alunos
para i de 1 ate qtdAlunos passo 1 faca
   escreval("Digite o nome do aluno ",i)
   leia(aluno[i])
fimpara

// solicita as notas de cada aluno
para i de 1 ate qtdAlunos passo 1 faca
   para j de 1 ate qtdNotas passo 1 faca
      escreval("Digite a nota",j," do aluno ",aluno[i])
      leia(nota[i,j])
   fimpara
fimpara

// calcula a media de cada aluno
para i de 1 ate qtdAlunos passo 1 faca
   somaNotas <- 0
   para j de 1 ate qtdNotas passo 1 faca
      somaNotas <- somaNotas + nota[i, j]
   fimpara
   media[i] <- somaNotas / qtdNotas
fimpara

// mostra os alunos aprovados, media igual ou acima de 7
escreval("ALUNOS APROVADOS:")
para i de 1 ate qtdAlunos passo 1 faca
   se (media[i] >= 7) entao
      escreval(aluno[i])
   fimse
fimpara

// mostra os alunos reprovados, media abaixo de 7
escreval("ALUNOS REPROVADOS:")
para i de 1 ate qtdAlunos passo 1 faca
   se (media[i] < 7) entao
      escreval(aluno[i])
   fimse
fimpara

Fimalgoritmo
