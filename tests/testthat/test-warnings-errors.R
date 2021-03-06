context("Warnings and errors")

with_mock_api({
  test_that("Incorrect API types are caught", {
    expect_warning(clquery(type = "junk"))
  })
})

with_mock_api({
  test_that("Incorrect formats are caught", {
    expect_warning(clquery('color', '6B4106', fmt = 'junk'))
  })
})
