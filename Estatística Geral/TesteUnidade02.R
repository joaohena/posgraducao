# 1
# O tempo de vida de um arranjo mecânico em um teste vibracional é distribuído exponencialmente, 
# com uma média de 400 horas (λ = 1/400). A probabilidade de que 
# um arranjo em teste falhe em menos de 100 horas é:
pexp(100, 1/400) # R: 0,2212

# 2
# O período de estiagem liga um sinal de alerta quanto ao abastecimento de 
# água das grandes cidades. Certa cidade brasileira possui várias adutoras 
# que abastecem de água seus bairros, então verifica-se que a probabilidade 
# de uma dessas adutoras, nessas condições, não ter problemas na distribuição 
# de água seja de 0,2. Dez dessas adutoras são observadas e assim deseja-se estimar 
# a probabilidade de que pelo menos uma dessas adutoras funcione perfeitamente, isto é, 
# não traga problemas para o abastecimento de água da população?

# Resposta:
# ---------
# Nesse caso, temos um evento Bernoulli para cada uma das adutoras, sendo a probabilidade 
# de 0,2 para não falhar! Ao avaliarmos um experimento envolvendo 10 adutoras, o modelo de 
# probabilidade que devemos usar é o Binomial. Nessa caso temos os parâmetros n = 10 e p = 0,20, 
# considerando que X, minha variável aleatória conta o número de adutoras que não falham ou que 
# funcionem perfeitamente (X indo de 0 a 10, sendo 0 nenhuma das adutoras funcionem ou 10 para todas 
# funcionem perfeitamente). Como deseja-se avaliar a probabilidade de se ter pelo menos uma adutora 
#funcionando, desejamos obter a probabilidade:
# P(X>0) = 1 - P(X = 0)
# Ou seja, a probabilidade de que pelo menos uma funcione será igual um menos a probabilidade que nenhuma funcione (P(X = 0)).
# No R, basta fazer o seguinte comando:
1 - dbinom(0, 10, .2)

# 3
# Suponha que o número de eleitores que chegam a uma seção de uma Zona Eleitoral 
# no dia de uma determinada eleição, siga a uma distribuição de Poisson com uma 
# média de chegada de 30 eleitores por meia hora. A probabilidade de que cheguem 
# menos de 3 eleitores em 5 minutos é:

# Resposta:
# ---------
# Na distribuição de Poisson, a taxa pode sofrer alteração caso o período de tempo se altere. 
# Veja que a taxa é de 30 eleitores a cada meia hora (30 minutos). Ou seja, podemos dizer que 
# a taxa é um eleitor a cada um minuto. Então para avaliarmos a probabilidade de chegarem menos 
# de 3 eleitores em 5 minutos, devemos considerar a taxa como 5 eleitores a cada 5 minutos.
# No R, podemos calcular a probabilidade p(X<3) = P(X<=2) como:
ppois(2, 5)

# 4
# Antes de lançar um novo carro no mercado as montadoras fazem testes com alguns 
# protótipos, cujo objetivo é alcançar a melhor performance possível, dentro da 
# sua categoria. Em testes com seu novo carro RBX em uma superfície seca, a distância 
# de frenagem média foi 145 pés e o desvio padrão 6,53 pés. As distâncias de frenagem 
# do carro são normalmente distribuídas. Qual é a maior distância de frenagem em uma 
# superfície seca que um desses RBX poderia ter e ainda estar no 1,5% do topo?

# Resposta:
# ---------
# Notem que para a probabilidade solicitada deseja que os 1,5% das distâncias estejam 
# no topo da curva de distribuição normal. Ou seja, desejamos obter o valor de x de tal forma que:
# P(X > x) = 0,015
# Dessa forma, o comando correto no R seria:
qnorm(.015, 145, 6.53, lower.tail = F)
# Veja que usamos o "lower.tail = F" para dizer ao comando que desejamos encontrar o valor de x 
# considerando a cauda superior da curva e não a cauda inferior.

# 5
# Um sensor tem vida média de 1500 dias com desvio padrão de 70 dias que tem distribuição 
# aproximadamente normal. A partir desta informação são feitas as afirmações:
# I. O número máximo de dias necessários para que se tenha que repor no máximo 5% dos produtos é 1615 dias.
# II. O número máximo de dias necessários para que se tenha que repor no máximo 5% dos produtos é 1385 dias.
# III. A probabilidade de este sensor durar entre 1500 e 1570 dias é 0,3413.

# Resposta:
# ---------
# A variável aleatória tem distribuição normal com média 1500 e desvio-padrão de 70.Note que as afirmações 
# I e II são as mesmas. Para calcular a probabilidade de no máximo termos 5% de produtos com até x de tempo 
# de vida, devemos utilizar a seguinte comando: pnorm(x, 1500, 70)
# Assim, para os itens I e II, devemos utilizar o seguinte comando:
qnorm(.05, 1500, 70)
# Na afirmação III, devemos usar o seguinte comando:
pnorm(1570, 1500, 70) - pnorm(1500, 1500, 70) 
# Assim somente as afirmativas II e III estão corretas.
