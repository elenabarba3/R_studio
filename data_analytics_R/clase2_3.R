#RETO GUIADO 

#primero argumentos sin valor fijo
salario <- function(costehora, horas = 40, retenciones = 0.02){
  if(horas>45){
    horasextras = horas - 45
    costeextra = costehora * 1.5
    bruto = 45 * costehora + horasextras * costeextra
  } else {
    bruto = horas * costehora

  }
#para devolver mas de una cosa tiene q estar en una lista
  neto = bruto * (1-retenciones)
  return(list('salario bruto:' = bruto, 'salario neto:' = neto))
}

salario (20)

#BUCLE FOR CON VECTORES

media <- function (x) {
  resultado <- 0
  for(i in 1:length(x)){
    resultado<- resultado + x[i]
  }
  resultado / length(x)
}
media(1:11)

#BUCLE WHILE
media <- function (x){
  resultado <- 0
  i<- 1
  while (i <= length(x)){
    resultado <- resultado + x[i]
    i <- i + 1
  }
  resultado / length(x)
}
media(1:11)

#VECTORIZACION

media <- function(x){
  sum(x)/length(x)
}
media(20:30)
