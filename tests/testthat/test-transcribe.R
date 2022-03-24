test_that("Test transcription", {
  expect_equal(transcribe("ATGGTTC"), "AUGGUUC")
})
