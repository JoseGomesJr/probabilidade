library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
readd <- as.data.frame(dados)

cidade <- subset(dados, NO_MUNICIPIO_RESIDENCIA == "São Miguel dos Campos")
notahisd <- cidade$NOTA_ENEN
notas.quartil <- cut(notahisd, breaks = quantile(notahisd, na.rm = TRUE))
sexo_nota <- table(cidade$TP_SEXO, notas.quartil)


graf <- barplot(sexo_nota, beside = TRUE,  
                              col = c("mistyrose2", "lightskyblue1"),
                              main = "GRÁFICO AGRUPADO POR NOTAS E SEXO DE SÃO MIGUEL DOS CAMPOS", 
                              ylim = c(0, 400), cex.axis = 1, legend = TRUE,
                              args.legend = list(x = 10, y = 350, cex = 1, text.font = 1, 
                                                 bg = "ghostwhite"),
                              ylab = "Quantidade")