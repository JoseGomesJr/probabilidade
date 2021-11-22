library(readxl)
dados <- read_excel("ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)

nota_huma <- nota$NU_NOTA_CH
nota_exata <- nota$NU_NOTA_MT


graf <- plot(nota_huma, nota_exata)