#' Insertar sub-sección
#'
#' Función para introducir una sub-sección
#'
#' @export
#'
insert_subsection <- function(){

  context <- rstudioapi::getActiveDocumentContext()

  rstudioapi::insertText(
"# └ Insertar texto =====
"
  )
}
