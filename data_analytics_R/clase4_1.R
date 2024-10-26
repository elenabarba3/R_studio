#localizar errores 
#browser para y se abre error con el debug. para observar variables
comprobar_residencia <- function(localidad){
  browser()
  if(localidad == 'Madrid'){
    TRUE
  } else{
    FALSE
  }
}

#FUNCION STOP PARA GENERAR UN ERROR SI SE CUMPLE UN CASO 
comprobar_edad <- function(edad){
  if(!is.numeric(edad)){
    stop('la edad debe ser un numero', call. = FALSE)
  }else if(
        edad >18){
        TRUE
      }else{
        FALSE
    }
  }

comprobar_acceso <- function(localidad, edad){
  if(comprobar_edad(edad)& comprobar_residencia(localidad)){
    print('mostrar contenido')
  }else{
    print('no mostrar contenido')
  }
}

comprobar_acceso('Madrid','33')
tracebck() #ensena los pasos que ha ido ejecutando 

debug(comprobar_acceso) #INTERRUMPE codigo para revisar 
comprobar_acceso('Madrid', 35)


#TRYCATCH: Prueba algo si devuelve error, determinar que hace si da error
#pasar error, y poner el warning (genera alerta sin detener codigo)

#TRYCATCH(funcionalidad, error, warning)

resultado <- tryCatch({
  # Código que podría generar un error
  resultado <- 10 / 0
  resultado
}, error = function(e) {
  # Acciones a realizar en caso de error
  print(paste("Error:", e$message))
  resultado <- NA
})
if (condicion) {
  warning("Cuidado: La condición no es ideal.")
}
# TRY solo captura el error sin especificar acciones en caso de éxito.
resultado <- try(log("abc"), silent = TRUE)




