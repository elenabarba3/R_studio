#Define una variable llamada numero con el valor 10 y otra llamada nombre con tu nombre.
num <- 10
nombre <- 'Elena'
#Utiliza las funciones class e is.numeric para determinar el tipo de dato de numero.
class (num)
class(nombre)
is.numeric(num)
is.numeric(nombre)

# Realiza una operación aritmética que sume numero y el doble de numero.
operacion= num + num*2
operacion
#Crea un vector llamado edades con las edades de tres personas y una lista llamada informacion con el nombre y la edad de una persona.
edades <- c(10, 15, 17)
informacion <- list (nombre = 'ana', edad = 10)

#Verifica si nombre es de tipo caracter y si es numerico es de tipo lógico.
is.character(nombre)
is.logical (nombre)
#Crea una variable llamada mayor de edad que sea TRUE si la edad de la primera persona en edades es mayor o igual a 18.
mayor_edad <- edades[1] >= 18
#Utiliza el operador %in% para verificar si el valor 30 está presente en el vector edades .
30 %in% edades
#Compara si el doble de numero es mayor que edades[3].
(num*2)>edades[3]
#Define dos variables lógicas, condicion1 y condicion2 , ambas con valor TRUE . Comprueba si ambas condiciones son verdaderas.
condicion1 = TRUE
condicion2 = TRUE
print (condicion1 & condicion2)
#Define una variable lógica, verdadero , con valor TRUE . Comprueba que su valor NO sea verdadero.
verdadero <- TRUE
print (!verdadero)
