# carregar a biblioteca para identificar MSExcel
library(readxl)

# identificar o caminho raiz
getwd()

# carga do .xlsx
path_doc <- "Documents/PosGraduacao/Estatística Geral/Professor/Nota de Alunos - Parte 1.xlsx"
Nota_Alunos <- read_xlsx(path_doc)

# visualizar os dados importados
View(Nota_Alunos)

# tabela de frquencia para genero
freq_genero <- table(Nota_Alunos$Genero); freq_genero
prop_genero <- prop.table(freq_genero); prop_genero #tirar a proporção
perc_genero <- round(prop_genero * 100, digits = 2); perc_genero
coluna_freq <- c(freq_genero, sum(freq_genero)); coluna_freq
coluna_perc <- c(perc_genero, sum(perc_genero)); coluna_perc

names(coluna_freq)[length(coluna_freq)] <- "Total"
tabela_freq <- cbind(coluna_freq, coluna_perc); tabela_freq
View(tabela_freq)

# tabela de frenquência para conceito
freq_conceito <- table(Nota_Alunos$Conceito); freq_conceito
prop_conceito <- prop.table(freq_conceito); prop_conceito
perc_conceito <- round(prop_conceito * 100, digits = 2); perc_conceito
coluna_freq <- c(freq_conceito, sum(freq_conceito)); coluna_freq
coluna_perc <- c(perc_conceito, sum(perc_conceito)); coluna_perc

names(coluna_freq)[length(coluna_freq)] <- "Total"
tabela_freq <- cbind(coluna_freq, coluna_perc); tabela_freq 
View(tabela_freq)

# tabela de frequência para Nota Final - criando intervalos sem considerar o ultimo número do range
intervalos <- cut(Nota_Alunos$Nota_Final, breaks = 0:10, right = FALSE); intervalos
freq_notas <- table(intervalos); freq_notas
prop_notas <- prop.table(freq_notas); prop_notas
perc_notas <- round(prop_notas * 100, digits = 2); perc_notas
coluna_freq <- c(freq_notas, sum(freq_notas)); coluna_freq
coluna_perc <- c(perc_notas, sum(perc_notas)); coluna_perc

names(coluna_freq)[length(coluna_freq)] <- "Total"
tabela_freq <- cbind(coluna_freq, coluna_perc); tabela_freq
View(tabela_freq)

# Gráfico de pizza
rotulos <- paste(perc_genero, "%", sep = "")
pie(freq_genero, main = "Gráfico de Pizza: Gênero dos Alunos",
    labels = rotulos, col = rainbow(7))
legend(1, 1, names(freq_genero), col = rainbow(7), pch = 15)

# Gráfico de Barras ou Colunas
barplot(freq_conceito, col = "yellow")
barplot(freq_conceito, horiz = TRUE, col = "green")

freq_cruzada <- table(Nota_Alunos$Genero, Nota_Alunos$Conceito); freq_cruzada
barplot(freq_cruzada, beside = TRUE, main = "Conceitos vs Gênero",
        ylab = "Número de Aluno", col = c("darkblue", "red"))
legend(1, 30, rownames(freq_cruzada), col = c("darkblue", "red"), pch = 15)

# Histograma para nota final
hist(Nota_Alunos$Nota_Final, breaks = 0:10, right = FALSE, col = "orange",
     xlab = "Notas", ylab = "Frequência", main = "Distribuição de Notas")

# Gráfico de Séries
plot(Nota_Alunos$Prova_1, type = 'l', xlab = "ID Aluno", ylab = "Nota")
lines(Nota_Alunos$Prova_2, col = "blue")
lines(Nota_Alunos$Prova_3, col = "red")

# Gráfico de caixa
boxplot(Nota_Alunos$Nota_Final ~ Nota_Alunos$Disciplina,
        main = "Nota Final por Disciplina",
        xlab = "Disciplina", col = c("orange", "green"))
