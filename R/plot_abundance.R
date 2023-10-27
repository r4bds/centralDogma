#' Plot abundance of each amino acid in a peptide
#'
#' @param peptide A peptide
#' @importFrom magrittr `%>%`
#'
#' @return A bar chart of amino acid content
#' @export
#'
plot_abundance <- function(peptide){
  unique_amino_acids <- peptide %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = peptide, pattern =  amino_acid)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Peptide"]] <- rownames(counts)

  plt_abundance <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = .data$Peptide, y = .data$Counts, fill = .data$Peptide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(plt_abundance)
}
