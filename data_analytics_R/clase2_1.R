#definir funcion IMC (ejemplo)
imc<- function(peso, altura){
  
  peso/((altura/100)^2)
}
mi_imc <- imc(65,173)
mi_imc  
#hacerlo por partes la funcion
imc<- function(peso, altura){
  altura_corregida <-  altura/100 
  altura_cuadrado <- altura_corregida^2
  imc= peso/altura_cuadrado
  return (list('altura_corregida'=altura_corregida, 'imc' = imc)) #para tener los dos valores
}
mi_imc <- imc(65,173)
mi_imc  
