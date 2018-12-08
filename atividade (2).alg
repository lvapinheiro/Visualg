//gabriel batista tenorio TIA 31660551
//Matheus de Vasconcelos Moura TIA 31685668
// Jin Song Lucas Kong TIA 31671616
algoritmo "semnome"
// ============================================================================
// Função : Completar o algoritmo que exibe o menu de opções, calcula
// e exibe os resultados de acordo com a opção escolhida. Escreva as funções
// correspondente às opções do menu.
// Autor : Alice Mayumi Kotani
// ============================================================================
// ============================================================================
// PROCEDIMENTOS E FUNÇÕES
// ============================================================================
procedimento exibeMenu()
inicio
limpatela
escreval ("==================== MENU - FUNÇÕES ====================")
escreval ("[ 1] Soma de numeros")
escreval ("[ 2] Média de numeros")
escreval ("[ 3] Maior número")
escreval ("[ 4] Porcentagem de números negativos")
escreval ("[ 5] Média dos números pares")
escreval ("[ 6] Quantidade de números ímpares positivos")
escreval ("[ 7] Triângulos")
escreval ("[ 8] Número invertido")
escreval ("[ 9] Soma de números entre N1 e N2")
escreval ("[10] Quantidade de alunos aprovados")
escreval ("[11] Percentual de alunos reprovados")
escreval ("[12] Aumento de salário")
escreval ("[13] Desconto no valor de uma compra")
escreval ("[14] Maximo Divisor Comum")
escreval ("[15] Número primo")
escreval ("[16] Ano bissexto")
escreval ("[99] Sair")
escreval ("========================================================")
escreval
fimprocedimento

funcao leOpcao(): inteiro
var
o: inteiro
p: caracter
inicio
o <- leInteiro("Escolha a opção")
enquanto ((o < 1) ou (o > 16) e (o <> 99)) faca
   escreval ("Opção incorreta!")
   escreva ("Pressione <ENTER> para continuar...")
   leia (p)
   exibeMenu()
   o <- leInteiro("Escolha a opção")
fimenquanto
retorne o
fimfuncao

funcao leInteiro (texto: caracter): inteiro
var
n: inteiro
inicio
escreva (texto, ": ")
leia (n)
retorne n
fimfuncao

funcao leReal (texto: caracter): real
var
n: real
inicio
escreva (texto, ": ")
leia (n)
retorne n
fimfuncao

funcao leNota(texto: caracter): real
var
n: real
inicio
escreva (texto, ": ")
leia (n)
enquanto (n < 0) ou (n > 10) faca
   escreval ("Nota fora do intervalo!")
   escreva (texto)
   leia (n)
fimenquanto
retorne n
fimfuncao

// ==Primeiro==========================================================================

funcao somaNumeros (x:inteiro): real
var
cont : inteiro
n,r : real
inicio
escreva("insira os numeros que serão somados: ")
enquanto (cont <> x) faca
   n <- leReal("numero")
   r <- r + n
   cont <- cont + 1
fimenquanto
retorne r
fimfuncao


// ==SEGUNDO==================================================================

funcao mediaNumeros (x:inteiro): real
var
cont : inteiro
n,r : real
inicio
escreva("insira os numeros")
enquanto (cont <> x) faca
   n <- leReal("numero")
   r <- r + n
   cont <- cont + 1
fimenquanto
retorne r/cont
fimfuncao

// FIM-SEGUNDO

// ==TERCEIRO==================================================================

funcao maiorNumero (x:inteiro): real
var
cont : inteiro
n, mn : real
inicio
escreva("insira os numeros")
enquanto (cont <> x) faca
   n <- leReal("numero")
   se n > mn entao
      mn <- n
   fimse
   cont <- cont + 1
fimenquanto
retorne mn
fimfuncao

// FIM-TERCEIRO

// ==QUARTO==================================================================

funcao porcNegativos (x:inteiro): real
var
cont, contn : inteiro
n: real
inicio
repita
   escreva("insira os numeros")
   n <- leReal("numero")
   se (n<0) entao
      contn <- contn + 1
   senao
   fimse
   cont <- cont + 1
ate (cont = x)
retorne (contn/cont)*100
fimfuncao

// FIM-QUARTO

// ==QUINTO==================================================================

funcao mediaPares  (x:inteiro): real
var
n,cont, contp : inteiro
r: real
inicio
repita
   escreva("insira os numeros")
   n <- leInteiro("")
   se (n%2=0) entao
      r <- r + n
      contp <- contp + 1
   senao
   fimse
   cont <- cont + 1
ate (cont = x)
retorne (r/contp)
fimfuncao

//FIM-QUINTO

// ==SEXTO==================================================================

funcao qtdImpPositivos(n:inteiro): inteiro
var
x : inteiro
i, s :inteiro
inicio
enquanto (i <> n) faca
   x <- leInteiro("")
   se (x%2<>0) entao
      se ( x > 0) entao
         s <- s + 1
      fimse
   fimse
   i <- i + 1
fimenquanto
retorne s
fimfuncao


//FIM-SEXTO

// ==SETIMO==================================================================

funcao triangulo(a: REAL; b: REAL; c: REAL):INTEIRO
var
s: inteiro
inicio
s <- 0
se (a < b + c) e (b < a + c) e (c < a + b ) entao
   se ( a = b) e ( a = c) entao
      s = 1
   senao
      se (a = b) ou (a = c) entao
         s = 2
      senao
         s = 3
      fimse
   fimse
fimse
retorne s
fimfuncao



// ==OITAVO==================================================================

funcao inverteNumero(n:inteiro): inteiro
var
x,m,c,d,u : inteiro
inicio
m := n\1000
c := (n%1000)\100
d := (n%100)\10
u := (n%100)%10
x := (u*1000) + (d*100) + (c*10) + m
retorne x
fimfuncao


// ==NONO==================================================================

funcao somaNumerosIntervalo(x:inteiro; y:inteiro): inteiro
var
s: inteiro
inicio
s <- 0
enquanto (x<y+1) faca
   s <- s + x
   x <- x + 1
fimenquanto
retorne s
fimfuncao


// ==DECIMO==================================================================

funcao qtdeAprovados(n:inteiro): inteiro
var
i, s: inteiro
nota : real
inicio

enquanto (i<>n) faca
   nota <- leNota("nota")
   se (nota >= 7.5) entao
      s <- s + 1
   fimse
   i <- i + 1
fimenquanto
retorne s
fimfuncao


// ==DECIMO PRIMEIRO==================================================================

funcao percReprovados(n:inteiro): real
var
i: inteiro
s,nota : real
inicio
enquanto (i <> n) faca
   nota <- leNota("nota")
   se (nota < 6) entao
      s <- s + 1
   fimse
   i <- i + 1
fimenquanto
se (s <> 0) entao
   s <- s*100/n
fimse
retorne s
fimfuncao



// ==DECIMO SEGUNDO==================================================================

funcao aumentoSalario(n:REAL): real
var
a: real
inicio

se (n <=1000) entao
   a <- n*0.085
senao
   se (n <= 2500) entao
      a := n*0.07
   senao
      se (n <= 4000) entao
         a := n*0.045
      senao
         a = n*0.03
      fimse
   fimse
fimse
retorne a
fimfuncao


// ==DECIMO TERCEIRO==================================================================

funcao descontoCompra(n:REAL): real
var
d: real
inicio
se (n <= 750) entao
   d <- n*0.05
senao
   se(n <= 2000)entao
      d <- n*0.075
   senao
      se(n <= 3500)entao
         d <- n*0.1
      senao
         d <- n*0.15
      fimse
   fimse
fimse
retorne d
fimfuncao


// ==DECIMO QUARTO==================================================================

funcao mdc (x: inteiro; y:inteiro):inteiro
var
r: inteiro
inicio
enquanto (y <> 0) faca
   r <- x % y
   x <- y
   y <- r
fimenquanto
retorne x
fimfuncao


// ==DECIMO QUINTO ==================================================================

funcao primo(x: inteiro): logico
var
d: inteiro
c : inteiro
inicio
d <- 1
c <- 1
enquanto (d<=(x\2)) e (c<=2) faca
   se (x%d=0) entao
      c <- c + 1
   fimse
   d <- d + 1
fimenquanto
se (c = 2 ) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao


// ==DECIMO SEXTO==================================================================

funcao anoBissexto (n : inteiro) :logico
var
inicio
se (n%4=0) e (n%100<>0) ou (n%400=0) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao


















// ============================================================================
// VARIÁVEIS GLOBAIS
// ============================================================================
var
x, y, op: inteiro
a, b, c: real
p: caracter
// ============================================================================
// ALGORITMO PRINCIPAL
// ============================================================================
inicio
repita
   exibeMenu()
   op <- leOpcao()
   escreval
   escolha (op)
   caso 1
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Soma dos números = ", somaNumeros(x))

   caso 2
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Média dos números = ", mediaNumeros(x))

   caso 3
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Maior número = ", maiorNumero(x))
   caso 4
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Porcentagem de números negativos = ", porcNegativos(x),"%")
   caso 5
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Média dos números pares = ", mediaPares(x))
   caso 6
      repita
         x <- leInteiro("Quantidade de números")
      ate (x > 0)
      escreval ("Quantidade de números ímpares positivod = ", qtdImpPositivos(x))
   caso 7
      a <- leReal("Lado a")
      b <- leReal("Lado b")
      c <- leReal("Lado c")
      x <- triangulo(a,b,c)
      escolha (x)
      caso 0
         escreval ("Não forma triângulo")
      caso 1
         escreval ("Triângulo equilátero")
      caso 2
         escreval ("Triângulo isósceles")
      caso 3
         escreval ("Triângulo escaleno")
      fimescolha
   caso 8
      x <- leInteiro("Informe número de 4 algarismos")
      enquanto ((x < 1000) ou (x > 9999)) faca
         escreval ("Número incorreto!")
         x <- leInteiro("Informe número de 4 algarismos")
      fimenquanto
      escreval ("Número invertido = ", inverteNumero(x))
   caso 9
      repita
         x <- leInteiro("Primeiro número")
      ate (x > 0)
      repita
         y <- leInteiro("Segundo número")
      ate (y > 0)
      escreval ("Soma dos números entre ", x, " e ", y, " = ", somaNumerosIntervalo(x,y))
   caso 10
      repita
         x <- leInteiro("Quantidade de alunos")
      ate (x > 0)
      escreval ("Quantidade de alunos aprovados = ", qtdeAprovados(x))
   caso 11
      repita
         x <- leInteiro("Quantidade de alunos")
      ate (x > 0)
      escreval ("Percentual de alunos reprovados = ", percReprovados(x))
   caso 12
      repita
         a <- leReal("Salário")
      ate (a > 0)
      escreval ("Valor do aumento = R$ ", aumentoSalario(a))
   caso 13
      repita
         a <- leReal("Valor da compra")
      ate (a > 0)
      escreval ("Valor do desconto = R$ ", descontoCompra(a))
   caso 14
      repita
         x <- leInteiro("Primeiro valor")
      ate (x > 0)
      repita
         y <- leInteiro("Segundo valor")
      ate (y > 0)
      escreval ("Máximo Divisor Comum = ", mdc(x,y))
   caso 15
      repita
         x <- leInteiro("Informe número positivo")
      ate (x > 0)
      se (primo(x)) entao
         escreval ("É primo!")
      senao
         escreval ("Não é primo!")
      fimse
   caso 16
      repita
         x <- leInteiro("Informe ano (AAAA)")
      ate (x >= 1000) e (x <= 9999)
      se (anoBissexto(x)) entao
         escreval ("É bissexto!")
      senao
         escreval ("Não é bissexto!")
      fimse
   fimescolha
   escreval
   escreva ("Pressione <ENTER> para continuar...")
   leia (p)
ate (op = 99)
escreval ("Finalizando... ")
fimalgoritmo
