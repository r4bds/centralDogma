test_that("Transcription works", {
  expect_equal(transcribe(codon_split("AUGGUGCGCAGU")), "MVRS")
})
