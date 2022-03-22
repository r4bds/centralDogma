#' Transcript a list of codons into a peptide
#'
#' @param codons A list of codons
#'
#' @return A peptide
#' @export
#'
transcribe <- function(codons){
  peptide <- paste0(codon_table[codons], collapse = "")
  return(peptide)
}
