pageRank <- function(M, num_iter = 1, d = 0.85) {
  N <- ncol(M)
  v <- rep(1/N, N)
  M_hat <- d * M + (1 - d) / N
  for (i in 1:num_iter) {
    v <- M_hat %*% v
  }
  return(v)
}

M <- matrix(c(0, 0, 0, 0, 1,
              0.5, 0, 0, 0, 0,
              0.5, 1, 0, 0, 0,
              0, 0, 1, 0.5, 0,
              0, 0, 0, 0.5, 0), nrow = 5, byrow = TRUE)
v <- pageRank(M, 100, 0.85)
print(v)


