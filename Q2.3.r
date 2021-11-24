library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
readd <- as.data.frame(dados)

cidade <- subset(dados, NO_MUNICIPIO_RESIDENCIA == "São Miguel dos Campos")
notahisd <- cidade$NU_NOTA_REDACAO
notas.quartil <- cut(notahisd, breaks = quantile(notahisd, na.rm = TRUE))
sexo_nota <- table(cidade$TP_COR_RACA, notas.quartil)

graf <- barplot(sexo_nota, beside = TRUE,  
                              col = rainbow(6),
                              main = "GRÁFICO AGRUPADO POR NOTAS E ETINIA DE SÃO MIGUEL DOS CAMPOS", 
                              ylim = c(0, 400), cex.axis = 1, legend = TRUE,
                              args.legend = list(x = 10, y = 350, cex = 1, text.font = 1, 
                                                 bg = "ghostwhite"),
                              ylab = "Quantidade")