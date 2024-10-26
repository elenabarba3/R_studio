#Define una función llamada saludo que imprima en la consola el mensaje "Hola, bienvenido a R".
saludo <- function(){
  print('hola, bienvenido a R')
}
saludo()

# Crea una función llamada calificar edad que tome un parámetro numérico llamado edad y muestre en la consola si la persona es "menor de edad" o "mayor de edad".
calificar_edad <- function(edad){
  if(edad <18){
    print ('eres menor de edad')
  } else{
    print('eres mayor de edad')
  }
}
calificar_edad(17)

#Define una función llamada tabla multiplicar que tome un parámetro numérico n e imprima la tabla de multiplicar del 1 al 10 de ese número.
tabla_multiplicar <- function(n){
  for (i in 1:10){
    resultado <- i*n
    print(paste(n, 'x', i, '=', resultado))
  }
}
tabla_multiplicar(3)

#Crea una función llamada numeros_pares que tome un parámetro numérico limite e imprima los números pares hasta ese límite.
numeros_pares <- function(limite){
  for (i in 1:limite){
    if (i %% 2 == 0){
      pares <- c(pares, i)
    }
  }
  print(pares)
}
numeros_pares(20)

#Define una función llamada matriz cuadrada que tome un parámetro numérico n e imprima una matriz cuadrada de tamaño n x n donde los elementos son el resultado de la suma de sus índices de fila y columna.
matriz_cuadrada <- function(n){
  matriz<- matrix(0, nrow = n, ncol = n)
  for (i in 1:n){
    for (j in 1:n){
      matriz [i,j] <- (i+j)
    }
  }
  print(matriz)
}
matriz_cuadrada(5)