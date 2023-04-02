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
f = seq(from=10, to=60, by=10)
boxplot(e, f, notch=T, border="blue")










