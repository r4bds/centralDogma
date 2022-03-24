test_that("Translation works", {
  expect_equal(translate(codon_split("AUGGUGCGCAGU")), "MVRS")
  expect_equal(translate("ATG"), "NA")
  expect_type(translate("AUG"), "character")
  expect_error(translate(data.frame()))
})
