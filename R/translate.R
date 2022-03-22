#' Translates a DNA strand into RNA
#'
#' @param dna A DNA strand
#'
#' @return A RNA strand
#' @export
#'
translate <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
