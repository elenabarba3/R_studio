#estructuras de control de flujo
#if 
edad <-  14
if (edad >= 18){
  print("es mayor de edad")
} else {
  print('eres menor de edad')
}

if (edad >= 67){
  print('te puedes jubilar')
} else if (edad>=18){
  print('puedes trabajar')
} else{
  print('eres menor de edad')
}

#ifelse para operaciones vectorizadas para aplicar a todos los elementos de un vector
ifelse(14:20 >18, 'adulto', 'menor')

#bucle FOR (sabemos cuantas veces vamos a hacer el bucle, esta definido)
numeros <- 5:10
for (i in numeros){
  print(i**2)
}

#bucle WHILE (no sabemos cuantas veces vamosa hacer el bucle)
contador <- 1

while (contador <= 5){ 
  print(paste('iteracion:', contador))
  contador <- contador +1
}

