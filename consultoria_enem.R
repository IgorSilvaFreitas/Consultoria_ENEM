### Consultoria ENEM 2016

setwd("C:/Users/Igor/Documents/GitHub/Consultoria_ENEM/Microdados_enem_2016/DADOS")
library(readr)
# dados <- read_csv2('microdados_enem_2016.csv') |> filter(NU_ANO==2016,
#                                                         TP_ST_CONCLUSAO==c(1,2),
#                                                         SG_UF_RESIDENCIA==c('RJ','SP','MG','ES'),
#                                                         IN_TREINEIRO==0,
#                                                         TP_PRESENCA_LC==1,
#                                                         TP_PRESENCA_CH==1) |> 
#   select(c(TP_COR_RACA,TP_SEXO,TP_ESCOLA,Q005,Q026,Q002,Q006,NU_IDADE,NU_NOTA_REDACAO, NU_NOTA_CN, NU_NOTA_CH, NU_NOTA_LC, NU_NOTA_MT))
# 
# 
# write.csv(dados,'dados_enem.csv')


dados <- read_csv('dados_enem.csv')
dados <- dados[,-1]

dados <- dados |> rename(R= NU_NOTA_REDACAO, CNT= NU_NOTA_CN, CHT= NU_NOTA_CH, LCT= NU_NOTA_LC,
                     MT= NU_NOTA_MT,RACA = TP_COR_RACA,SEXO = TP_SEXO,ESCOLA = TP_ESCOLA,MORA = Q005,TRAB= Q026,ESCOL_MAE= Q002,IDADE= NU_IDADE) |> 
  mutate(CNT= paste0(str_sub(CNT, 1, 3), ".", str_sub(CNT, 4, 4)),
         CNT= as.numeric(CNT),
         CHT= paste0(str_sub(CHT, 1, 3), ".", str_sub(CHT, 4, 4)),
         CHT= as.numeric(CHT),
         LCT= paste0(str_sub(LCT, 1, 3), ".", str_sub(LCT, 4, 4)),
         LCT= as.numeric(LCT),
         MT= paste0(str_sub(MT, 1, 3), ".", str_sub(MT, 4, 4)),
         MT= as.numeric(MT),
         FORMULA= (2*R + CNT + 2*CHT + LCT + MT)/7)



