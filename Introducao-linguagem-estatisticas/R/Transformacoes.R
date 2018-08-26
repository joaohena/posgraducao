caminho = "Documents/PosGraduacao/IntroducaoLinguagensEstatisticas/R/dados/iris-dataset.csv"
df = read.csv(caminho, header = FALSE, sep = ",")
colnames(df) = c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")

# eixo 1 a função recebe linha a linha
# vamos então transformar as colunas numéricas
# deixando seus valores numa escala entre 0 e 1
apply(df[,c('sepal_width', 'sepal_length')], 1, function(linha){length(linha)})
apply(df[,c('sepal_width', 'sepal_length')], 1, function(linha){mean(linha)})

# eixo 2 a função recebe coluna a coluna
apply(df[,c('sepal_width', 'sepal_length')], 2, function(coluna){length(coluna)})
apply(df[,c('sepal_width', 'sepal_length')], 2, function(coluna){mean(coluna)})

apply(df[,c('sepal_width', 'sepal_length')], 1, function(x){x / max(x)})