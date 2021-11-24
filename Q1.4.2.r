library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
municipios <- table(nota$TP_LINGUA)

graf <- barplot(municipios, beside = TRUE,  
                              col = c("mistyrose2", "lightskyblue1"),
                              main = "GRÁFICO DA PROVA DE LINGUAS ESTRANGEIRAS", 
                              ylim = c(0, 50000), cex.axis = 1,
                              ylab = "Quantidade")

