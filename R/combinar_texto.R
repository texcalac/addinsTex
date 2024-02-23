#' Crear vector de texto
#'
#' Crea un vector de texto con comillas y separado por comas
#'
#' @export
#'
vector_texto <- function() {

  ctx <- rstudioapi::getActiveDocumentContext()

  if (!is.null(ctx)) {

    if (ctx$selection[[1]]$text != "") {

      bits <- stringi::stri_trim_both(ctx$selection[[1]]$text)
      bits <- stringi::stri_split_regex(bits, "[[:space:]]+")
      bits <- unlist(bits, use.names = FALSE)

      qu <- options("useFancyQuotes")
      options(useFancyQuotes = FALSE)

      uspace <- FALSE
      if (uspace) bits <- stringi::stri_replace_all_fixed(bits, "_", " ")

      bits <- sapply(bits, dQuote)

      options(qu)

      bits <- paste0(bits, collapse = ", ")
      bits <- sprintf("c(%s)", bits)

      rstudioapi::modifyRange(ctx$selection[[1]]$range, bits)

    }

  }

}
