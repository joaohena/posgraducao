caminho = "Documents/PosGraduacao/IntroducaoLinguagensEstatisticas/R/dados/iris-dataset.csv"
df = read.csv(caminho, header = FALSE, sep = ",")
colnames(df) = c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")

aggregate(df$sepal_length, by = list(species = df$species), mean)
aggregate(df$sepal_length, by = list(species = df$species), max)

aggregate(df$sepal_length, by = list(species = df$species), function(x){max(x)})
aggregate(df$sepal_length, by = list(species = df$species), function(x){min(x)})

# outra maneira de fazer
aggregate(sepal_length ~ species, df, mean)
aggregate(cbind(sepal_length, sepal_width) ~ species, df, mean)
aggregate(. ~ species, df, mean)
aggregate(. ~ species + sepal_length, df, mean)

df_ex = data.frame(valores = 1:5, g1 = c("A", "B", "B", "A", "A"), g2 = c("C", "D", "D", "D", "C"))
df_ex
aggregate(valores ~ g1, df_ex, mean)
aggregate(. ~ g1 + g2, df_ex, mean)