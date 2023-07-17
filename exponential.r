load("FairMLCourse-main/Data/fairml/compas.rda", verbose = TRUE)
#hist(compas$priors_count)
#plot(density(compas$priors_count))
library(stats4)
x <- compas$priors_count
ll <- function(lamb) {
  loglik <- sum(dexp(x, lamb, log = TRUE))
  -loglik
}
z <- mle(minuslogl = ll, start = list(lamb = 1))
summary(z)
curve(dexp(x, 0.3085643), from = 0, to = 40)
L <- 1 / mean(x)
curve(dexp(x, L), from = 0, to = 40)