#' Split RNA strand into codons
#'
#' @param rna An RNA stand
#' @param start The starting position
#'
#' @return A list of codons
#' @export
#'
codon_split <- function(rna, start = 1){
  rna_length <- nchar(rna)
  codons <- substring(rna,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}
