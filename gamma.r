# load("FairMLCourse-main/Data/fairml/compas.rda", verbose = TRUE)
# hist(compas$age, prob = TRUE)
# lines(density(compas$age))
# library(stats4)
# n <- length(compas$age)
# x <- compas$age
# ll <- function(lamb, r) {
#   loglik <- sum(dgamma(x, r, lamb, log = TRUE))
#   -loglik
# }
# z <- mle(minuslogl = ll, start = list(lamb = 1, r = 1))
# z
# curve(dgamma(x, 15.5519170, 0.3885483), add = TRUE)
# A <- mean(x)
# L <- A / ((1 / n) * sum((x - A)^2))
# C <- L * A
# curve(dgamma(x, C, L), add = TRUE)



load("FairMLCourse-main/Data/qeML/nyctaxi.RData", verbose = TRUE)
head(nyctaxi)
#hist(national.longitudinal.survey$age)
# plot(density(compas$age))
# library(stats4)
# n <- length(compas$age)
# x <- compas$age
# # integrand <- function(t, r) {
# #   t^(r - 1) * exp(-t)
# # }
# ll <- function(lamb, r) {
#   # loglik <- n * log(1 / factorial(r - 1)) + n * log(lamb^r) + sum(log(x^(r - 1))) - lamb * sum(x)
#   loglik <- sum(dgamma(x, r, lamb, log = TRUE))
#   -loglik
# }
# z <- mle(minuslogl = ll, start = list(lamb = 1, r = 1))
# summary(z)
# curve(dgamma(x, 15.5519170, 0.3885483), from = 0, to = 100)
# A <- mean(x)
# L <- A / ((1 / n) * sum((x - A)^2))
# C <- L * A
# curve(dgamma(x, C, L), from = 0, to = 100)