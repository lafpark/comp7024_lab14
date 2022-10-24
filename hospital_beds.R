
# setwd("/tmp/comp7024_lab14/")

d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")


chosen <- which((d$t >= "2020-07-01") & (d$t < "2020-12-31"))

library("ggplot2")

dlim <- d[chosen,]

ggplot(data = dlim) +
  geom_line(mapping = aes(x = t, y = H), col = "red") +
  geom_line(mapping = aes(x = t, y = C), col = "green") +
  geom_line(mapping = aes(x = t, y = D), col = "black") +
  scale_y_sqrt() +
  labs(x = "Date", y = "Number of Beds", title = "Beds Needed during COVID19 in 2020")




