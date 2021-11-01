### Consultoria ENEM 2016


#Pacotes
library(readr)
library(stringr)
library(dplyr)


setwd("C:/Users/polia/OneDrive/Documentos/GitHub/Consultoria_ENEM")

# dados <- read_csv2('microdados_enem_2016.csv') |> filter(NU_ANO==2016,
#                                                         TP_ST_CONCLUSAO %in% c(1,2),
#                                                         SG_UF_RESIDENCIA %in% c('RJ','SP','MG','ES'),
#                                                         IN_TREINEIRO==0,
#                                                         TP_PRESENCA_LC==1,
#                                                         TP_PRESENCA_CH==1) |>
#   select(c(TP_COR_RACA,TP_SEXO,TP_ESCOLA,Q005,Q026,Q002,Q006,NU_IDADE,NU_NOTA_REDACAO, NU_NOTA_CN, NU_NOTA_CH, NU_NOTA_LC, NU_NOTA_MT,Q047))
# 
# write.csv(dados,'dados_enem.csv')
# 
# dados <- read_csv('dados_enem.csv')
# dados <- dados[,-1]
# 
# dados <- dados |> rename(R= NU_NOTA_REDACAO, CNT= NU_NOTA_CN, CHT= NU_NOTA_CH, LCT= NU_NOTA_LC,
#                      MT= NU_NOTA_MT,RACA = TP_COR_RACA,SEXO = TP_SEXO,ESCOLA = TP_ESCOLA,MORA = Q005,TRAB= Q026,ESCOL_MAE= Q002,IDADE= NU_IDADE,RENDA= Q006, EM=Q047) |> 
#   mutate(CNT= paste0(str_sub(CNT, 1, 3), ".", str_sub(CNT, 4, 4)),
#          CNT= as.numeric(CNT),
#          CHT= paste0(str_sub(CHT, 1, 3), ".", str_sub(CHT, 4, 4)),
#          CHT= as.numeric(CHT),
#          LCT= paste0(str_sub(LCT, 1, 3), ".", str_sub(LCT, 4, 4)),
#          LCT= as.numeric(LCT),
#          MT= paste0(str_sub(MT, 1, 3), ".", str_sub(MT, 4, 4)),
#          MT= as.numeric(MT),
#          FORMULA= (2*R + CNT + 2*CHT + LCT + MT)/7)

#dados <- na.omit(dados)
# write.csv(dados,'ENEM_dados.csv')
# 
# 
# dados <- read_csv('ENEM_dados.csv')
# dados <- dados[,-1]
####A0 ou B, ampla conc = 
####L1 ou A1, renda <= 1,5 SM e EM cursado em EP
####L2 ou A2, renda <= 1,5 SM, RACA sendo parda, indigena e preta e EM cursado em EP
####L5 ou A6, enda > 1,5 SM e EM cursado em EP
####L6 ou A7, renda > 1,5 SM , RACA sendo parda, indigena e preta e EM cursado em EP

# for (i in 1:dim(dados)[1]){
#   if (dados$RENDA[i]==c("A","B","C") & dados$EM[i]=="A"){
#     if (dados$RACA[i]==c(2, 3, 5)){
#       dados$A2[i] <- 1
#       dados$A1[i] <- 1
#       dados$B[i] <- 0
#     }else {
#       dados$A2[i] <- 0
#       dados$A1[i] <- 1
#       dados$B[i] <- 0
#       }
#   }else if (dados$RENDA[i]!=c("A","B","C") & dados$EM[i]=="A") {
#     if (dados$RACA[i]==c(2, 3, 5)){
#       dados$A6[i] <- 1
#       dados$A1[i] <- 0
#       dados$A7[i] <- 1
#       dados$B[i] <- 0
#     }else {
#       dados$A6[i] <- 1
#       dados$A7[i] <- 0
#       dados$B[i] <- 0
#     }
#   }else{
#     dados$B[i] <- 1
#     dados$A6[i] <- 0
#     dados$A7[i] <- 0
#     dados$A2[i] <- 0
#     dados$A1[i] <- 0
#   }
# 
# }
# write.csv(dados,'dados_ENEM.csv')


dados <- read_csv('dados_ENEM.csv')
dados <- dados[,-c(1,2)]

################################################################################################
# #raça
# dados$RACA<- ordered(dados$RACA,levels=c(0,1,2,3,4,5,6),
#                      labels=c("Não Declarado","Branco","Preta","Parda","Amarela","Indígina","Não dispõe da informação"))
# #sexo
# dados$SEXO<- ordered(dados$SEXO,levels=c("M","F"),
#                      labels=c("Masculino","Feminino"))
# #escola
# dados$ESCOLA <-ordered(dados$ESCOLA,levels=c(1,2,3,4),
#                        labels=c("Não Respondeu","Pública","Privada","Exterior"))
# #trabalho
# dados$TRAB <-ordered(dados$TRAB,levels=c("A","B","C"),
#                           labels=c("Não, nunca trabalhei.","Sim, já trabalhei, mas não estou trabalhando.","Sim, estou trabalhando."))
# #escolaridade da mãe
# dados$ESCOL_MAE <-ordered(dados$ESCOL_MAE,levels=c("A","B","C","D","E","F","G","H"),
#                        labels=c("Nunca estudou.","Não completou a 4ª série/5º ano do Ensino Fundamental.","Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do Ensino Fundamental.","Completou a 8ª série/9º ano do Ensino Fundamental, mas não completou o Ensino Médio.","Completou o Ensino Médio, mas não completou a Faculdade.","Completou a Faculdade, mas não completou a Pós-graduação.","Completou a Pós-graduação.","Não sei."))
# #renda
# dados$RENDA <-ordered(dados$RENDA,levels=c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q"),
#                           labels=c("Nenhuma renda.","Até R$ 880,00.","De R$ 880,01 até R$ 1.320,00.","De R$ 1.320,01 até R$ 1.760,00.","De R$ 1.760,01 até R$ 2.200,00.","De R$ 2.200,01 até R$ 2.640,00.","De R$ 2.640,01 até R$ 3.520,00.","De R$ 3.520,01 até R$ 4.400,00.","De R$ 4.400,01 até R$ 5.280,00.","De R$ 5.280,01 até R$ 6.160,00.","De R$ 6.160,01 até R$ 7.040,00.","De R$ 7.040,01 até R$ 7.920,00.","De R$ 7.920,01 até R$ 8.800,00.","De R$ 8.800,01 até R$ 10.560,00.","De R$ 10.560,01 até R$ 13.200,00.","De R$ 13.200,01 até R$ 17.600,00.","Mais de R$ 17.600,00."))
# #escola em que cursou o ensino médio
# dados$EM <-ordered(dados$EM,levels=c("A","B","C","D","E"),
#                       labels=c("Somente em escola pública.","Parte em escola pública e parte em escola privada sem bolsa de estudo integral.","Parte em escola pública e parte em escola privada com bolsa de estudo integral.","Somente em escola privada sem bolsa de estudo integral.","Somente em escola privada com bolsa de estudo integral."))


load("dados_enem.RData")
base <- base_enem
## Criando grupos para classificar a classe de concorrência

base$indicador <- seq(from=1, to=length(base$RACA),by=1)

A1.1 <- filter(base, RENDA %in% c("A","B","C"),
               EM == "A")
A1.1 <- mutate(A1.1, A1=1)
A1.2 <- filter(base, !indicador %in% A1.1$indicador) 
A1.2 <- mutate(A1.2, A1=0)

base <- rbind(A1.1,A1.2)
#---------------------------------------------------------------
A2.1 <- filter(base, RENDA %in% c("A","B","C"),
               EM == "A",
               RACA %in% c(2, 3, 5)) 
A2.1 <- mutate(A2.1, A2=1)
A2.2 <- filter(base, !indicador %in% A2.1$indicador) 
A2.2 <- mutate(A2.2, A2=0)

base <- rbind(A2.1,A2.2)
#---------------------------------------------------------------
A6.1 <- filter(base, !RENDA %in% c("A","B","C"),
               EM == "A")
A6.1 <- mutate(A6.1, A6=1)
A6.2 <- filter(base, !indicador %in% A6.1$indicador)
A6.2 <- mutate(A6.2, A6=0)

base <- rbind(A6.1,A6.2)
#---------------------------------------------------------------
A7.1 <- filter(base, !RENDA %in% c("A","B","C"),
               EM == "A",
               RACA %in% c(2, 3, 5))
A7.1 <- mutate(A7.1, A7=1)
A7.2 <- filter(base, !indicador %in% A7.1$indicador)
A7.2 <- mutate(A7.2, A7=0)
base <- rbind(A7.1,A7.2)
#---------------------------------------------------------------
B.1 <- filter(base, EM != "A")
B.1 <- mutate(B.1, B=1)

B.2 <- filter(base, EM == "A")
B.2 <- mutate(B.2, B=0)

base <- rbind(B.1,B.2)
#---------------------------------------------------------------
base <- arrange(base, by=indicador)


## Excluindo tudo que não será mais utilizado
rm(A1.1,A1.2,A2.1,A2.2,A6.1,A6.2,A7.1,A7.2,B.1,B.2,base_enem)




## Variável sobre situação de aprovação

b1ap <- base |> filter(B==1, FORMULA >= 661.34, R>=300, CNT>=300,CHT>=350,
                       LCT>=300, MT>=250) |> 
  mutate(Situação_B.1='Aprovado')

b1nc <- base |> filter(B==0) |> mutate(Situação_B.1='Não concorreu')

b1aux <- rbind(b1ap,b1nc)

b1na <- base |> filter(!indicador %in% b1aux$indicador) |> 
  mutate(Situação_B.1='Não aprovado')

base <- rbind(b1aux,b1na)
