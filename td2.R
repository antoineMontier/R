par(mfrow=c(4, 2))

plot(ozone$T12~ozone$maxO3)
reg.simple = lm(T12~maxO3, data=ozone)
summary(reg.simple)
abline(reg.simple, col="red", lwd=2)
coef(reg.simple)
y = residuals(reg.simple)
x = rstandard(reg.simple)
hist(x)
hist(y)


xnew <- matrix(20,nrow=1)
colnames(xnew) <- c("T12")
xnew <- as.data.frame(xnew)
reg.simple <- lm(maxO3~T12,data=ozone)
predict(reg.simple,xnew,interval="pred")

blood.glucose <- c(15.30, 10.80, 8.10, 19.50, 7.20, 5.30, 9.30, 11.10, 7.50, 12.20, 6.70, 5.20, 19.00, 15.10, 6.70, 4.20, 10.30, 12.50, 16.10, 13.30, 4.90, 8.80, 9.50)
short.velocity <- c(1.76, 1.34, 1.27, 1.47, 1.27, 1.49, 1.31, 1.09, 1.18, 1.22, 1.25, 1.19, 1.95, 1.28, 1.52, 1.12, 1.37, 1.19, 1.05, 1.32, 1.03, 1.12, 1.70)
diabet = data.frame(blood.glucose, short.velocity)

plot(diabet$blood.glucose~diabet$short.velocity)
anova(blood.glucose)
