sourceCpp('~/Dropbox (2.0)/Work/Software/webpage_bootcamp/_sessions/D4S1_EfficientCode/C++ code/fast_lm.cpp')


timer <- function(expr){ 
  t <- proc.time()[3]
  expr
  proc.time()[3] - t
  }

# create matrix
d = data.frame(
  a = rnorm(1000000,0,1),
  b = rnorm(1000000,0,1),
  c = rnorm(1000000,0,1)
  )

# time m_square
timer(lm(a ~ b + c, data = d))

# time m_square
timer(fast_lm(as.matrix(d[,c(2,3)]),d$a))

# evaluate coefficients
fast_lm(as.matrix(d[,c(2,3)]),d$a)
lm(a ~ b + c, data = d)
