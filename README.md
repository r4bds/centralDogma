
<!-- README.md is generated from README.Rmd. Please edit that file -->

# centralDogma

<!-- badges: start -->
<!-- badges: end -->

## About

The `centralDogma` package simulates the central dogma of molecular
biology: DNA -> RNA -> Peptide. The package provides functions for each
step and also a function to plot the abundance of each amino acid in a
peptide.

## Installation

``` r
devtools::install_github("rforbiodatascience22/centralDogma")
```

## Usage

``` r
library(centralDogma)
# devtools::load_all("../")
```

#### Create a random DNA strand

Normally, you have a DNA strand of your own you want to investigate, but
a random strand can be generated.

``` r
dna_strand <- random_dna(dna_length = 6000)
```

#### Translate DNA into RNA

The first step of the central dogma is to translate a gene (DNA strand)
into RNA

``` r
rna_strand <- translate(dna = dna_strand)
```

#### Split RNA strand into a list of codons

In reality, some post translational changes occur to the messenger RNA,
but we will ignore that fact here. To properly transcribe the RNA, it
needs to be converted into a list of codons.

``` r
codons <- codon_split(rna = rna_strand)
```

#### Transcribe codons into a peptide

The list of codons can then be transcribed using the `codon_table`
provided with the package. Run `?codon_table` if you want more
information.

``` r
peptide <- transcribe(codons = codons)
```

A lot of post-transcriptional changes are performed to the peptide, but
this package will not apply those.

You are free to explore the created peptide. Here, a function is
provided that plots the abundance of each amino acid in the peptide.

#### Plot the abundance of each amino acid in a peptide

``` r
plot_abundance(peptide = peptide) +
  ggplot2::theme(legend.position = "none")
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="50%" style="display: block; margin: auto;" />
