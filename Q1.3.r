library(readxl)
dados <- read_excel("ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
notahisd <- nota$NOTA_ENEN

notas.quartil <- cut(notahisd, breaks = quantile(notahisd, na.rm = TRUE))
sexo_nota <- table(dados$TP_SEXO, notas.quartil)


graf <- barplot(sexo_nota, beside = TRUE,  
                              col = c("mistyrose2", "lightskyblue1"),
                              main = "GRÁFICO AGRUPADO POR NOTAS E SEXO", 
                              ylim = c(0, 15000), cex.axis = 1, legend = TRUE,
                              args.legend = list(x = 10, y = 12000, cex = 1, text.font = 1, 
                                                 bg = "ghostwhite"),
                              ylab = "Quantidade")
