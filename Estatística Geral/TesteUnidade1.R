# carregar a biblioteca para identificar MSExcel
library(readxl)

# identificar o caminho raiz
getwd()

# carga do .xlsx
path_doc <- "Documents/PosGraduacao/Estatística Geral/Professor/Nota de Alunos - Parte 1.xlsx"
Nota_Alunos <- read_xlsx(path_doc)

# primeira questão
freq_cruzada_2 <- table(Nota_Alunos$Conceito,Nota_Alunos$Genero)
prop_cruzada_2 <- round(100*prop.table(freq_cruzada_2,2),2)
barplot(prop_cruzada_2, ylab = "% de Alunos", col = rainbow(8), ylim = c(0,120))
legend(1, 120, rownames(prop_cruzada_2), col = rainbow(8), pch = 15, horiz = T)
title("Conceito vs Gênero") #correta

freq_cruzada_2 <- table(Nota_Alunos$Conceito,Nota_Alunos$Genero)
barplot(freq_cruzada_2, ylab = "% de Alunos", col = rainbow(8), ylim = c(0,120))
legend(1, 120, rownames(prop_cruzada_2), col = rainbow(8), pch = 15, horiz = T)
title("Conceito vs Gênero") #errada

freq_cruzada_2 <- table(Nota_Alunos$Conceito,Nota_Alunos$Genero)
prop_cruzada_2 <- round(100*prop.table(freq_cruzada_2,2),2)
barplot(prop_cruzada_2, beside = T,ylab = "% de Alunos", col = rainbow(8), ylim = c(0,120))
legend(1, 120, rownames(prop_cruzada_2), col = rainbow(8), pch = 15, horiz = T)
title("Conceito vs Gênero") #errada

freq_cruzada_2 <- table(Nota_Alunos$Conceito,Nota_Alunos$Genero)
prop_cruzada_2 <- prop.table(freq_cruzada_2,2)
barplot(prop_cruzada_2, ylab = "% de Alunos", col = rainbow(8), ylim = c(0,120))
legend(1, 120, rownames(prop_cruzada_2), col = rainbow(8), pch = 15, horiz = T)
title("Conceito vs Gênero") #errada

# segunda questão
cvA <- 9.2 * 100 / 891; cvA # empresa A
cvB <- 3.2 * 100 / 105; cvB # empresa B


# quinta questão
Rotulos_Desc <- c("Média", "Mediana", "Amplitude", "Desvio-Padrão", "CV")
xbarra <- mean(Nota_Alunos$Nota_Final)
xtil <- median(Nota_Alunos$Nota_Final)
Amp <- range(Nota_Alunos$Nota_Final)
Desvio <- sd(Nota_Alunos$Nota_Final)
CV <- 100*Desvio/xbarra
Descritivas <- c(xbarra, xtil, Amp, Desvio, CV)
Descritivas <- round(cbind(Descritivas),digits = 2)
Valores_Desc <- as.data.frame(Descritivas, row.names = Rotulos_Desc, col.names = names(Descritivas))
Valores_Desc # errada

Rotulos_Desc <- c("Média", "Mediana", "Amplitude", "Desvio-Padrão", "CV")
xbarra <- mean(Nota_Alunos$Nota_Final)
xtil <- median(Nota_Alunos$Nota_Final)
Amp <- diff(range(Nota_Alunos$Nota_Final))
Desvio <- var(Nota_Alunos$Nota_Final)
CV <- 100*Desvio/xbarra
Descritivas <- c(xbarra, xtil, Amp, Desvio, CV)
Descritivas <- round(cbind(Descritivas),digits = 2)
Valores_Desc <- as.data.frame(Descritivas, row.names = Rotulos_Desc, col.names = names(Descritivas))
Valores_Desc # errada

Rotulos_Desc <- c("Média", "Mediana", "Amplitude", "Desvio-Padrão", "CV")
xbarra <- mean(Nota_Alunos$Nota_Final)
xtil <- median(Nota_Alunos$Nota_Final)
Amp <- diff(range(Nota_Alunos$Nota_Final))
Desvio <- sd(Nota_Alunos$Nota_Final)
CV <- 100*xbarra/Desvio
Descritivas <- c(xbarra, xtil, Amp, Desvio, CV)
Descritivas <- round(cbind(Descritivas),digits = 2)
Valores_Desc <- as.data.frame(Descritivas, row.names = Rotulos_Desc, col.names = names(Descritivas))
Valores_Desc # errada

Rotulos_Desc <- c("Média", "Mediana", "Amplitude", "Desvio-Padrão", "CV")
xbarra <- mean(Nota_Alunos$Nota_Final)
xtil <- median(Nota_Alunos$Nota_Final)
Amp <- diff(range(Nota_Alunos$Nota_Final))
Desvio <- sd(Nota_Alunos$Nota_Final)
CV <- 100*Desvio/xbarra
Descritivas <- c(xbarra, xtil, Amp, Desvio, CV)
Descritivas <- round(cbind(Descritivas),digits = 2)
Valores_Desc <- as.data.frame(Descritivas, row.names = Rotulos_Desc, col.names = names(Descritivas))
Valores_Desc # certa