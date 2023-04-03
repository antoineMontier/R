poids <- poulpeF$Poids
summary(poids)
var(poids)
sd(poids)

hist(poids, freq = F)
boxplot(poids)
max(poids)
min(poids)
count = 0
for(i in 1:length(poids)){
  if(poids[i] > 1500){
    count = count + 1
  }
}
count

mean(poids) # 639.625
t.test(poids, conf.level=.95)$conf.int
t.test(poids, conf.level=.9)$conf.int
t.test(poids, conf.level=.99)$conf.int

z <- sondage$engagements
z
summary(z)
sum(z)
length(z)
prop.test(sum(z), length(z), conf.level = .95)$conf.int

pnorm((42 - 50)/13)
pnorm(42, mean=50, sd=13)

x = rnorm(n=100000, mean=0, sd=1);
hist(x)

qbinom(0.8, size=100, prob=.5)
pbinom(54, size=100, prob=.5)

e = seq(from=0, to=80)
f = seq(from=0, to=1600, by=20)
ef = lm(f ~ e)
plot(e, f)
abline()

dexp(5, rate=3)

x = rexp(10000, rate=.1)
hist(x, nclass=100)

x = rf(10000, df1=5, df2=100);
hist(x, nclass=100)

df(5, df1=1, df2=1, ncp=2)

abline(h=390)


prop.test(17, 100, .20, alternative = "less", conf.level = .95, correct=F)


TAB = matrix(c(10, 15, 40, 135), ncol=2)
rownames(TAB) = c("Age < 20", "Age > 20")
colnames(TAB) = c("Wt < 2500g", "Wt > 2500g")
TAB
chisq.test(TAB, correct=F)




