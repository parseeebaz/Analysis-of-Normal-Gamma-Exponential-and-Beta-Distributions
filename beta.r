load("FairMLCourse-main/Data/qeML/day.RData", verbose = TRUE)
head(day$windspeed)
hist(day$windspeed)
plot(density(day$windspeed))
library(stats4)
x <- day$windspeed
ll <- function(alpha, beta) {
  loglik <- sum(dbeta(x, alpha, beta, log = TRUE))
  -loglik
}
z <- mle(minuslogl = ll, start = list(alpha = 1, beta = 1))
z
curve(dbeta(x, 4.776347, 30.288352), from = 0, to = 0.5)
mean(day$windspeed)