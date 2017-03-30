source("functions.R")

x <- c(448, 938, 1592, 4090, 2854, 5377)
y1 <- c(441.5, 1059, 1716, 2061, 2964, 5383)

erry1 <- c(0.5, 1, 1, 1, 5, 5)


drawCI(x, y1, erry1, xlab = "Theoretical Frequency/Hz", ylab = "Meassured Frequency/Hz")

grid()

x <- c(448, 938, 1592, 2854, 5377)
y1<- c(441.5, 1059, 1716, 2964, 5383)
erry1 <- c(0.5, 1, 1, 5, 5)
#text(x=40, y=100, "y=(13.1+-0.3)*channel/keV*x+(7+-6)*channel", cex=0.8)
fm1 <- lm(y1 ~ x, weights=1/erry1^2)
summary(fm1)
abline(fm1, col = "red")