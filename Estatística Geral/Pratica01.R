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
prop_genero <- prop.table(freq_genero); prop_genero
perc_genero <- round(prop_genero * 100, digits = 2); perc_genero
coluna_freq <- c(freq_genero, sum(freq_genero)); coluna_freq
coluna_perc <- c(perc_genero, sum(perc_genero)); coluna_perc

names(coluna_freq)[length(coluna_freq)] <- "Total"

tabela_freq <- cbind(coluna_freq, coluna_perc); tabela_freq
