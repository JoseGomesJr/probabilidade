library(readxl)
dados <- read_excel("ENEM_AL_EXCEL_AJUS_OK.xlsx", sheet=1, col_names=TRUE)
nota <- as.data.frame(dados)
etinia <- table(nota$TP_COR_RACA)

porc<-round(etinia*100/sum(etinia),2)
rotulos<-paste("(",porc,"%)",sep="")
p <- pie(etinia,
    main = "PROPORÇÃO DE PARTICIPANTES POR ETINIA",
    cex.main=1, col.main="darkblue", col = rainbow(6), labels=rotulos)

legend(1,1,names(etinia),col = rainbow(6),pch=rep(15,5))         