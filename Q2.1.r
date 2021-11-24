library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
readd <- as.data.frame(dados)

cidade <- subset(dados, NO_MUNICIPIO_RESIDENCIA == "São Miguel dos Campos")
notahisd <- as.numeric(cidade$NOTA_ENEN)
h_lista <- hist(notahisd, col = "khaki",
              main = "HISTOGRAMA DAS NOTAS SÃO MIGUEL DOS CAMPOS", 
              xlab = "Notas", ylab = "Frequência Absoluta",
              xlim = c(300, 850), ylim = c(0, 500))