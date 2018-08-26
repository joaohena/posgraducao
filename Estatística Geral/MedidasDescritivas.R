# carregar a biblioteca para identificar MSExcel
library(readxl)

# identificar o caminho raiz
getwd()

# carga do .xlsx
path_doc <- "Documents/PosGraduacao/Estatística Geral/Professor/Nota de Alunos - Parte 1.xlsx"
Nota_Alunos <- read_xlsx(path_doc)

# visualizar os dados importados
View(Nota_Alunos)

### MEDIDAS DE TENDÊNCIA CENTRAL
# média aritmética
mean(Nota_Alunos$Prova_1)

# mediana (valores central, ordenada crescente)
median(Nota_Alunos$Prova_1)

# Moda (trabalha com a frequencia - repetição)
tabela_freq <- table(Nota_Alunos$Prova_1); tabela_freq
subset(tabela_freq, tabela_freq == max(tabela_freq))

# média ponderada (amostral não tem peso especifíco)
wt <- c(5, 5, 4, 1); wt
x <- c(3.7, 3.3, 3.5, 2.8); x
xm <- weighted.mean(x, wt); xm #média ponderada
m <- mean(x); m #média aritmetica

### MEDIDAS SEPARATRIZES
# percentil + percentual (divide a amostra em 100 partes)
quantile(Nota_Alunos$Prova_1, .35)

# decil + percentual (divide a amostra em 10 partes)
quantile(Nota_Alunos$Prova_1, .20)

# quartil + percentual (divide a amostra em 4 partes)
quantile(Nota_Alunos$Prova_1, .75)

### MEDIDAS DE DISPERSÃO
# Diferença entre o valor máximo e o mínimo da amostra, leva em consideração apenas as extremidades

# amplitude
range(Nota_Alunos$Prova_1) # valores extremos (o menor e o maior valor)
diff(range(Nota_Alunos$Prova_1))

# variância e desvio-padrão
var(Nota_Alunos$Prova_1) # variância amostral
sd(Nota_Alunos$Prova_1) # desvio padrão amostral

n <- length(Nota_Alunos$Prova_1); n
((n - 1) / n) * var(Nota_Alunos$Prova_1) # variância populacional
sqrt(((n - 1) / n) * var(Nota_Alunos$Prova_1)) # desvio padrão populacional

# coeficiente de variação
x_barra <- mean(Nota_Alunos$Prova_1); x_barra
s <- sd(Nota_Alunos$Prova_1); s
cv <- s * 100 / x_barra; cv

# sumarização
summary(Nota_Alunos$Prova_1)

summary(Nota_Alunos)