x = data.frame("id" = 1:3, "idade" = c(32, 21, 3)); x

data.frame("id" = 1:3, "idade" = c(32, 23, 30))

typeof(x)
class(x)

# funções do Data Frame
names(x)
ncol(x)
nrow(x)
length(x) # números de colunas
str(x)

#criando um dataframe
x = data.frame("id" = 1:2, "idade" = c(21,15), "nome" = c("Jose Lima", "Dória Silva")); str(x)
x = data.frame("id" = 1:2, "idade" = c(21,15), "nome" = c("Jose Lima", "Dória Silva"), 
               stringsAsFactors = FALSE); str(x)

#Lidando com valores nulos
x = data.frame("id" = 1:3, "idade" = c(21, NA, 15), "nome" = c("Jose Lima", "Dória Silva", "Raphael Campos"), 
               stringsAsFactors = FALSE); str(x)

#não retorna valor por causa do NA
sum(x[,'idade']) / length(x[,'idade'])
mean(x[ ,'idade']) 

#teste de existir ou não
is.na(c(21, NA, 15))

!is.na(x[,'idade'])
x[!is.na(x[,'idade']), 'idade']
sum(x[!is.na(x[,'idade']), 'idade']) / length(x[!is.na(x[,'idade']), 'idade'])
mean(x[!is.na(x[,'idade']) ,'idade'])

x[is.na(x[,'idade']), 'idade'] = mean(x[!is.na(x[,'idade']), 'idade'])
x

# Lendo Data Frame de um Arquivo CSV
getwd()
caminho = "Documents/PosGraduacao/IntroducaoLinguagensEstatisticas/R/dados/iris-dataset.csv"
df = read.csv(caminho, header = FALSE, sep = ",")

#colocando nome nas colunas do arquivo
colnames(df) = c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")

head(df) # retorna 6 linhas (padrão)
head(df, n = 10)
tail(df) # retorna 6 ultimos (padrão)
tail(df, n = 10)

#python era df.describe()
summary(df) #retorna estatistica basicas

# Indexação
head(df["sepal_length"])
typeof(df["sepal_length"])
typeof(df[["sepal_length"]])
class(df[["sepal_length"]])

df$sepal_length
typeof(df$sepal_width)
class(df$species)

df[df$sepal_length < 5.0, 'petal_width']
df[df$sepal_length < 5.0, ]
df[df$sepal_length < 5.0, 'petal_width', drop = FALSE]

#criando uma nova coluna
df$nova = "a"
head(df)

df$numeros = 1:150
head(df)


# adicionando componentes
c(4,5,6,7) + c(3,5) # o R corrigir para somar ficando c(3,5,3,5)
df$nova = 1:50
df

# remover componentes
df$nova = NULL
df