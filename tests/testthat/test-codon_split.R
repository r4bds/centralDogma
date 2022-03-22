test_that("Test split", {
  expect_equal(codon_split("AUGUGGCAG"), c("AUG", "UGG", "CAG"))
})
