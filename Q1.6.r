library(readxl)
planilha <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
dados <- as.data.frame(planilha)
notas_zero <- table(dados$NU_NOTA_REDACAO == 0, dados$NO_MUNICIPIO_RESIDENCIA)

percent_zero <- prop.table(notas_zero, 2)*100

View(percent_zero)

graf<-barplot(sort(percent_zero[2,], decreasing = TRUE), beside = TRUE,  
                              main = "PROPORÇÃO DE CADA MUNICIPIO DE REDAÇÕES ZERADAS", 
                              ylim = c(0, 100), cex.axis = 0.9, las = 2, cex.lab= 0.8, cex.name = 0.7,
                              ylab = "PORCENTAGEM")