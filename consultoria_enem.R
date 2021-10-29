### Consultoria ENEM 2016


#Pacotes
library(readr)
library(stringr)
library(dplyr)



setwd("C:/Users/Igor/Documents/GitHub/Consultoria_ENEM")

# dados <- read_csv2('microdados_enem_2016.csv') |> filter(NU_ANO==2016,
#                                                         TP_ST_CONCLUSAO==c(1,2),
#                                                         SG_UF_RESIDENCIA==c('RJ','SP','MG','ES'),
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


