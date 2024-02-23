#' Crear carpetas de proyecto
#'
#' Función para crear carpetas de un proyecto
#'
#' @export
#'
crear_carpetas <- function(){

  ruta_proyecto <- rstudioapi::getActiveProject()

  carpetas <- c("code", "data", "output", "shapefiles", "markdown")

  for (i in seq_along(carpetas)) {
    dir_path <- file.path(ruta_proyecto, carpetas[i])
    if (!dir.exists(ruta_proyecto)) dir.create(ruta_proyecto)
  }

}
