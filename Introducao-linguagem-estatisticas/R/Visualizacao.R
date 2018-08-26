#install.packages("ggplot2")
library("ggplot2")

set.seed(10)

x = abs(rnorm(100, 50, 500))
x[x <= 40] = 40
w = 2000
y = x * (w - rnorm(length(x), 0, 500)) + 60000

df = data.frame(area = x, preco = y)

ggplot(df, aes(x = area, y = preco)) + geom_point()
ggplot(df, aes(x = area, y = preco)) + geom_point() + geom_smooth(method = "lm", se = TRUE)