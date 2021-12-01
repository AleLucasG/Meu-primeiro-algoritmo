Algoritmo "Folha Pgto Mensal"
// Disciplina  :  Linguagem e Lógica de Programação]
// Professor   :
// Descrição   : Pgto e Descontos de Folha Pgto Mensal
// Autor(a)    : Alessandra Lucas
// Data atual  : 09/09/2018
Var
   Nome, Resposta: Caractere
   Salario, Bruto, Adiantamento, Liquido1, Desconto1, Dependente, Valor, DescontoVT, DescontoVT1, IR, Desconto2, Liquido2, Liquido3, Alimentacao, Odontologico, Bonus: Real
   Dependente1: Inteiro

Procedimento Topo ()
Inicio
   EscrevaL ( )
   EscrevaL (" DEMONSTRATIVO DE PGTO ")
   EscrevaL ( )

   Escreva ("Funcionario: ")
   Leia (Nome)
   Escreva ("Salario Base R$ ")
   Leia (Salario)
   EscrevaL ("Abono por tempo de Serviço R$ ", Bonus:5:2)
   Escreva ("Quantidade de Dependentes: ")
   Leia (Dependente)
   Bruto <- Salario + Bonus
   EscrevaL ("SALARIO BRUTO R$ ", Bruto:5:2)
   ESCREVAL ( )
FimProcedimento

Inicio
   Alimentacao <- 20.01
   Odontologico <- 14.63
   Bonus <- 131.08

   //PROCEDIMENTO
   Topo()

   //ADIANTAMENTO QUINZENAL
   Escreva ("Recebe Adiantamento Quinzenal? [SIM/NAO]: ")
   Leia (Resposta)
   Se (Resposta = "SIM") entao
      Adiantamento <- (Salario * 40 ) / 100
      EscrevaL ("ADIANTAMENTO QUINZENAL R$ ", Adiantamento :5:2)
   SeNao
      Adiantamento <- 0
      EscrevaL ("NÃO HA PAGAMENTO")
   FimSe
   EscrevaL ( )

   //FGTS
   Se (Bruto >= 0) E (Bruto <= 1693.72) entao
      Desconto1 <- (Bruto * 8) /100
   FimSe
   Se (Bruto >= 1693.73) E (Bruto <= 2822.90)entao
      Desconto1 <- (Bruto * 9) /100
   Fimse
   Se (Bruto >= 2822.91) E (Bruto <= 5645.80)entao
      Desconto1 <- (Bruto * 11) /100
   Fimse
   Se (Bruto >= 5645.81)entao
      Desconto1 <- 621.04
   FimSe
   EscrevaL ("Desconto de FGTS R$ ", Desconto1:5:2)
   Liquido1 <- Bruto - Desconto1
   EscrevaL ("BASE LIQUIDA R$ ", Liquido1:5:2)
   EscrevaL ( )
   //IR

   Escolha Dependente
   Caso 1
      Valor <- 189.59
   Caso 2
      Valor <- 379.18
   Caso 3
      Valor <- 568.77
   Caso 4
      Valor <- 758.36
   Caso 5
      Valor <- 947.95
   FimEscolha
   EscrevaL ("Deducao por Dependente R$ ", Valor:5:2)
   IR <- Liquido1 - Valor
   EscrevaL ("BASE LIQUIDA PARA IR R$ ", IR:5:2)

   Se (IR <= 1903.98) entao
      Desconto2 <- 0
   FimSe
   Se (IR > 1903.99) e (IR < 2826.65)entao
      Desconto2 <- ((IR * 7.5) /100) - 142.80
   Fimse
   Se (IR > 2826.66) e (IR < 3751.05)entao
      Desconto2 <- ((IR * 15) /100) - 354.8
   Fimse
   Se (IR > 3751.06) e (IR < 4664.68)entao
      Desconto2 <- ((IR * 22.5) /100) - 636.13
   FimSe
   Se (IR >= 4664.69)entao
      Desconto2 <- ((IR * 27.5) /100)- 869.36
   FimSe
   Escreva ("Deducao de IR R$ ", Desconto2:5:2)
   EscrevaL ( )
   Liquido2 <- Liquido1 - Desconto2
   EscrevaL ("BASE LIQUIDA ", Liquido2:5:2)
   EscrevaL ( )

   //BENEFICIOS
   EscrevaL ("Desconto de Alimentação ", Alimentacao:5:2)
   EscrevaL ( )
   Escreva ("RECEBE VALE TRANSPORTE? [SIM/NAO]: ")
   Leia (Resposta)
   Se (Resposta = "SIM") entao
      DescontoVT <- (Salario * 6 ) / 100
      EscrevaL ("Desconto do Vale Transporte R$ ", DescontoVT :5:2)
   SeNao
      DescontoVT <- 0
      EscrevaL ("NÃO HA DESCONTO")
   FimSe

   Escreva ("TEM PLANO ODONTOLOGICO? [SIM/NAO]: ")
   Leia (Resposta)
   Se (Resposta = "SIM") entao
      Odontologico <- Odontologico
      EscrevaL ("Desconto do Plano Odontologico R$ ", Odontologico :5:2)
   SeNao
      Odontologico <- 0
      EscrevaL ("NÃO HA DESCONTO")
   FimSe

   Liquido3 <- Liquido2 - Adiantamento - Alimentacao - DescontoVT - Odontologico
   Escreval ("SALARIO LIQUIDO ", Liquido3:5:2)
Fimalgoritmo