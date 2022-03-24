#' Transcribe a DNA strand into RNA
#'
#' @param dna A DNA strand
#'
#' @return A RNA strand
#' @export
#'
transcribe <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
