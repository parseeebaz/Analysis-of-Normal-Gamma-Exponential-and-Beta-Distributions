load("FairMLCourse-main/Data/EDFfair/lawschoolbrief.RData", verbose = TRUE)
hist(lawschoolbrief$LSAT, ylim = c(0, 0.05), prob = TRUE)
lines(density(lawschoolbrief$LSAT))
library(stats4)
n <- length(lawschoolbrief$LSAT)
x <- lawschoolbrief$LSAT
ll <- function(mean, sd) {
  loglik <- sum(dnorm(x, mean, sd, log = TRUE))
  -loglik
}
z <- mle(minuslogl = ll, start = list(mean = 1, sd = 1))
z
curve(dnorm(x, 156.172544, 8.621921), add = TRUE)
mu <- mean(x)
variance <- (1 / n) * sum((x - mu)^2)
sigma <- sqrt(variance)
curve(dnorm(x, mu, sigma), add = TRUE)