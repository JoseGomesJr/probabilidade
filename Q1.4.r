library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
municipios <- table(nota$NO_MUNICIPIO_PROVA)

graf <- barplot(sort(municipios, decreasing = TRUE),  
                              col = "lightskyblue1",
                              main = "GRÁFICO DE MUNICIPOS QUE RECEBERAM A MAIOR QUANTIDADE DE PARTICIPANTES", 
                              ylim = c(0, 30000), cex.name = 0.7, srt = 45, las = 2, cex.lab= 0.9, cex.axis = 0.8,
                              ylab = "Quantidade")

