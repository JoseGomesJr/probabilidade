library(readxl)
planilha <- read_excel("c:\\Users\\josej\\OneDrive\\Documentos\\Probabilidade\\probabilidade\\ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
dados <- as.data.frame(planilha)
nota <- dados$NOTA_ENEN

# Boxplot
boxplot(nota, main = "Notas ENEM")

# Frequência absoluta Quartis
notas_quartil <- table(cut(nota, breaks = quantile(nota, na.rm = TRUE)))

# Frequência relativa Quartis
freq_rel <- prop.table(notas_quartil)*100

# Frequência absoluta acumulada
freq_absacc <- cumsum(notas_quartil)

# Frequência relativa acumulada
freq_relacc <- cumsum(freq_rel)

# Tabela de frequências
ftabel = cbind(notas_quartil, freq_absacc, freq_rel = round(freq_rel, digits = 2), round(freq_relacc, digits = 2))
colnames(ftabel) <- c("Absoluta", "Absoluta Acumulada", "Relativa", "Relativa acumulada")

View(ftabel)