library(tidyverse)
micro = read_csv2("microdados_enem_2016.csv")

sudeste = micro |> 
  rename(UF= SG_UF_RESIDENCIA, R= NU_NOTA_REDACAO, CNT= NU_NOTA_CN, CHT= NU_NOTA_CH, LCT= NU_NOTA_LC,
         MT= NU_NOTA_MT) |>
  filter(UF== "RJ" | UF== "SP" | UF== "MG" | UF== "ES") |> 
  mutate(CNT= paste0(str_sub(CNT, 1, 3), ".", str_sub(CNT, 4, 4)),
         CNT= as.numeric(CNT),
         CHT= paste0(str_sub(CHT, 1, 3), ".", str_sub(CHT, 4, 4)),
         CHT= as.numeric(CHT),
         LCT= paste0(str_sub(LCT, 1, 3), ".", str_sub(LCT, 4, 4)),
         LCT= as.numeric(LCT),
         MT= paste0(str_sub(MT, 1, 3), ".", str_sub(MT, 4, 4)),
         MT= as.numeric(MT),
         FORMULA= (2*R + CNT + 2*CHT + LCT + MT)/7)
