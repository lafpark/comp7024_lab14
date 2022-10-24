
# setwd("/tmp/comp7024_lab14/")

d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")


chosen <- which((d$t >= "2020-07-01") & (d$t < "2020-12-31"))

plot(d$t[chosen], d$H[chosen], xlab = "Date", ylab = "Number of Beds",
	main = "Hospital Beds Needed", col = "red", type = "l")



