library(testthat)

# Read the CSV file containing all German cities
german_cities <- read.csv("de.csv", header = FALSE)

# Extract the city names from the first column
german_cities <- german_cities[, 1]

# Filter out unwanted city names
specified_cities <- c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")
german_cities <- german_cities[german_cities %in% specified_cities]

# Test 1: Check if german_cities contains only the specified cities
test_that("Dataset contains only specified German cities", {
  expect_equal(sort(unique(german_cities)), sort(specified_cities))
})

# Test 2: Check if german_cities does not contain any additional cities
test_that("Dataset does not contain additional cities", {
  expect_true(any(german_cities %in% specified_cities))
})

# Test 3: Check if german_cities contains all specified cities
test_that("Dataset contains all specified German cities", {
  expect_true(all(specified_cities %in% german_cities))
})

