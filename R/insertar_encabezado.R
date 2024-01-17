#' Insertar encabezado de script
#'
#' Función para introducir el encabezado a scripts de proyectos
#'
#' @export
#'
insert_header <- function(){

  context <- rstudioapi::getActiveDocumentContext()

  rstudioapi::insertText(
"# ============================================================================ #
# Escriba aquí la finalidad del script
# Proyecto:
# Autor: Tex
# Fecha:
# ============================================================================ #

# Paquetes a utilizar
"
  )
}
