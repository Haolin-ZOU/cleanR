# In tests/testthat/test-clean_names.R
test_that("clean_names works with spaces and periods", {
  messy_df <- data.frame("First Name" = c("A"), "Last.Name" = c("B"))
  cleaned_df <- clean_names(messy_df)

  expected_names <- c("first_name", "last_name")

  expect_equal(names(cleaned_df), expected_names)
})

test_that("clean_names handles already clean names", {
  clean_df <- data.frame(a = 1, b = 2)
  # The function should not change anything
  expect_equal(names(clean_names(clean_df)), c("a", "b"))
})
