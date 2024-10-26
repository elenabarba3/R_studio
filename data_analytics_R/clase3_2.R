#LISTAS
# Creación de una lista
mi_lista <- list(nombre = "Juan", edad = 25, ciudad = "Ejemplo")
# Acceso a elementos por nombre
mi_lista$nombre # Devuelve "Juan"
mi_lista[["edad"]] # Devuelve 25

#la POSICION INICIAL ES 1, NO 0

# Acceso a elementos por índice con. DOBLE CORCHETE
mi_lista[[2]] # Devuelve 25

#recuperar varios elementos con un vector
mi_lista[c("nombre","ciudad")]

# Creación de listas anidadas
lista_anidada <- list(
  nombre = "Juan",
  edad = 25,
  direccion = list(
    calle = "Ejemplo",
    ciudad = "Ciudad Ejemplo",
    codigo_postal = "12345"
  ),
  notas = c(85, 92, 78)
)

# Acceso a elementos de listas anidadas
print(lista_anidada$nombre)
print(lista_anidada$direccion$calle)
print(lista_anidada$notas[2])

# Añadir elementos
mi_lista <- c(mi_lista, nuevo_elemento = "Nuevo valor")
#ANADIR elementos con el $
mi_lista$apellido <- "Martínez"

# Eliminar elementos
mi_lista$ciudad <- NULL

# Modificación de un elemento
lista_anidada$edad <- 26

# Modificación de un elemento en una lista anidada
lista_anidada$direccion$calle <- "Nueva Calle"


# Crear una lista de nombres
nombres <- list("Juan", "María", "Pedro", "Ana")

# Bucle for para imprimir cada nombre en la lista
for (nombre in nombres) {
  print(nombre)
}


# Crear una lista con elementos numéricos
lista_numeros <- list(a = 1, b = 2, c = 3)

# Intentar realizar una operación vectorizada (incorrecto)
lista_numeros * 2

# Inicializar una lista vacía para almacenar resultados
resultado <- list()

# Bucle for para multiplicar cada elemento por 2 (correcto)
for (elemento in lista_numeros) {
  resultado[[length(resultado) + 1]] <- elemento * 2
}


