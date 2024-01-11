library(microbenchmark)

cat("hello from R!\n")

cat("Benchmarking...\n")

multiply_matrix <- function(n) {
  matrix(1:n, nrow = n, ncol = n) %*% matrix(1:n, nrow = n, ncol = n)
}

microbenchmark(multiply_matrix(1000), times = 10)
