library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
notash <- nota$NU_NOTA_REDACAO

notas.quartil <- cut(notash, breaks = quantile(notash, na.rm = TRUE))
sexo_nota <- table(notas.quartil, dados$TP_SEXO)


graf <- barplot(sexo_nota, beside = TRUE,  
                              col = rainbow(4),
                              main = "GRÁFICO NOTAS DA REDAÇÃO AGRUPADO POR SEXO", 
                              ylim = c(0, 15000), cex.axis = 1, legend = TRUE,
                              args.legend = list(x = 10, y = 12000, cex = 1, text.font = 1, 
                                                 bg = "ghostwhite"),
                              ylab = "Quantidade")