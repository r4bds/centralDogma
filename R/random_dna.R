#' Create a random DNA strand
#'
#' @param dna_length The length of a random DNA strand
#'
#' @return A randomly generated DNA strand
#' @export
#'
random_dna <- function(dna_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = dna_length, replace = TRUE)
  dna <- paste0(nucleotides, collapse = "")
  return(dna)
}
