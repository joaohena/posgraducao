# MODELO BINOMIAL
# : Cálculo da Probabilidade para X ~ Bin(10; 0,2)
pbinom(8, 10, .2, lower.tail = FALSE)   # P(X > 8) = P(X >= 9) = 1 - P(X <= 8)
pbinom(2, 10, .2)                       # P(X < 3) = P(X <= 2)
pbinom(5, 10, .2) - pbinom(1, 10, .2)   # P(2 <= X <= 5) = P(X <= 5) - P(X <= 1)

# MODELO POISSON
# : Cálculo da Probabilidade para X ~ Po(0,02), ou seja, duas ocorrência a cada 100 produzidas (2/100)
dpois(0, .02)                 # P(X = 0)
ppois(2, .02)                 # P(X < 3) = P(X <= 2)
ppois(5, .02) - ppois(1, .02) # P(2 <= X <= 5) = P(X <= 5) - P(X <= 1)

# MODELO EXPONENCIAL
# : Cálculo da Probabilidade para X ~ Exp(1 / 2000). Ou seja, a variável terá um tempo de vida médio de 2000 horas.
pexp(1500, 1/2000, lower.tail = FALSE)  # P(X > 1500)
pexp(2000, 1/2000)                      # P(X < 2000)
pexp(3000, 1/2000) - pexp(2000, 1/2000) # P(2000 <= X <= 3000)

# MODELO NORMAL
# : Cálculo da Probabilidade para X ~ N(10;2)
pnorm(8, 10, 2, lower.tail = FALSE) # P(X > 8)
pnorm(3, 10, 2)                     # P(X < 3) = P(X <= 2)
pnorm(5, 10, 2) - pnorm(2, 10, 2)   # P(2 <= X <= 5) = P(X <= 5) - P(X <= 1)