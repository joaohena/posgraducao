# "vetorização"

x = c(1, 2, 5, 0, 10)
print(x)
typeof(x)
length(x)

x = c(1, 5.4, TRUE, "hello")
print(x)

x = c(TRUE, FALSE, 1, 0)
print(x)
typeof(x)

x = c(1L, 2L, 1L, 0L)
print(x)
typeof(x)

x = c(TRUE, FALSE, FALSE, TRUE)
print(x)
typeof(x)

x = 1:4
print(x)

x = 2:-5
print(x)

seq()

seq(1,3, by = 0.2)

seq(1, 5, length.out = 100)


# "Indexação"
x

x[5]

x[1:2]

x[c(1,3)]

x[-2]

x[c(TRUE, FALSE, FALSE, TRUE)]

x[x < 2]

x < 2

x[x >= 2]
x>=2


# "usando caracteres como indice (dicionario)"
x = c("primeiro" = 3, "segundo" = 0, "terceiro" = 9)
names(x)

x["primeiro"]
x[c("segundo", "terceiro")]


# "Modificando um Vetor"
x = 3:2; x

x[2] = 0; x

x[x <= 0] = 6; x


# "função ifelse"
x = 3:-3; x

ifelse(x < 0, -x, x) #retorna o valo absoluto dos elementos do vetor

# mais utilizações
x
y = 1:7; y

x + y

x - y

x * y

x / y

x %*% y # multiplicar matrixes

# MATRIZES
a = matrix(1:9, nrow = 3, ncol = 3); a
class(a)
attributes(a) #dimensões
dim(a) #quantas dimensões
length(dim(a))

matrix(1:9, nrow = 3, ncol = 3)
matrix(1:9, nrow = 3)
matrix(1:9, ncol = 3)
matrix(1:9)
matrix(1:9, nrow = 3, byrow = TRUE) #criar primeiro na linha

x = matrix(1:9, nrow = 3, dimnames = list(c("X", "Y", "Z"),c("A", "B", "C"))); x

colnames(x)
rownames(x)

colnames(x) = c("C1", "C2", "C3")
rownames(x) = c("R1", "R2", "R3")
x

# INDEXAÇÃO
x[1,2]
x["R1","C2"]
x[1:3, 1:2]
x[c(1,2), c(2,3)]
x[c(1,2),]
x[,]
x[-1,]
x[c(TRUE, FALSE, TRUE), c(TRUE, TRUE, FALSE)]
x[c(TRUE, FALSE), c(2, 3)]

# reciclagem
x
x[c(TRUE, FALSE)]
# no exemplo acima, a matrix é tratada como um vetor da forma (1,2,3,4,5,6,7,8,9)

x[x > 5] # selecia os valores maiores que 5
x[x %% 2 == 0] # seleciona os pares
x[x %% 2 != 0] # seleciona os impares

# modificando a Matriz
x = matrix(1:9, nrow = 3); x

x[2,2] = 10; x
x[x < 5] = 0; x

t(x) # transposta (linha vira coluna)

cbind(x, c(1, 2, 3)) # concatenar coluna no final
cbind(c(1, 2, 3), x) # concatenar coluna no inicio
cbind(x, x) # concatenar a matrix na matrix como coluna

rbind(x, c(1, 2, 3)) # concatenar linha no final
rbind(c(1, 2, 3), x) # concatenar linha no inicio
rbind(x, x) # concatenar a matrix na matrix como linha

x = x[1:2,]; x
x = matrix(1:6, nrow = 2); x
dim(x) = c(3,2); x
