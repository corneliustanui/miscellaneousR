testthat::test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


testthat::test_that("mean1() computes mean", {
  expect_equal(mean1(1:5), c(3))
})


## devtools::test()
