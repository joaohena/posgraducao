estado.civil = factor(c("solteiro", "viúvo", "casado", "solteiro", "viúvo", "casado", "solteiro", "viúvo", "casado"))
estado.civil

class(estado.civil)
levels(estado.civil)
str(estado.civil)

estado.civil[3]
estado.civil[c(1,2)]
estado.civil[-1]
estado.civil[c(TRUE, FALSE, FALSE, TRUE)]

# modificar um factor
estado.civil[2] = "solteiro"; estado.civil
estado.civil[2] = "divorciado"; estado.civil

levels(estado.civil)
levels(estado.civil) = c(levels(estado.civil), 'Divorciado')
levels(estado.civil)

estado.civil[2] = "divorciado"; estado.civil
str(estado.civil)