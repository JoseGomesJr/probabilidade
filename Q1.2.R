library(readxl)
dados <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
notahisd <- as.numeric(nota$NOTA_ENEN)
# Histograma da frequncia absoluta das notas
#lim_intervalo <- c(300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800)
#val <- as.data.frame(table(cut(notahisd, breaks = lim_intervalo)))
h_lista <- hist(notahisd, col = "khaki",
              main = "HISTOGRAMA DAS NOTAS", 
              xlab = "Notas", ylab = "Frequência Absoluta",
              xlim = c(300, 850), ylim = c(0, 8000))
