x = list(2.5, TRUE, 1L); x
typeof(x)
typeof(x[[1]])
typeof(x[[2]])
typeof(x[[3]])

x = list("a" = 2.5, "b" = TRUE); x
x$a
x$b
x[[1]]
typeof(x$a)
typeof(x$b)
length(x)

# criando listas
x = list("a" = 2.5, "b" = TRUE, "c" = 1:3); x
typeof(x)
typeof(x$a)
typeof(x$b)
typeof(x$c)

# o vetor dentro do elemento da lista 
x$c[1]
x$c[2]
x$c[3]
x[[3]][1]
x[[3]][2]
x[[3]][3]

x <- list(2.5, TRUE, 1:3); x

pessoa <- list("idade" = 27, "nome" = "josep lima")
pessoa$idade
pessoa$nome
