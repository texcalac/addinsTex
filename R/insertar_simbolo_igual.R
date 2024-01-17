#' Insertar símbolo igual.
#'
#' Función para introducir el símbolo = hasta la posición 80.
#'
#' @export
#'
insert_equals <- function(){

  context <- rstudioapi::getActiveDocumentContext()

  current_col <- context$selection[[1]]$range[[1]][[2]]

  num_equals <- 80 - current_col - 2

  # Insert dashes
  rstudioapi::insertText(paste0("   ", strrep("=", num_equals), "\n"))

}
