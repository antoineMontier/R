qnorm(0.975)
dnorm(0)
pnorm(1.96)
rnorm(20)
rnorm(10, mean=5, sd=0.5)
x=seq(-10,10, .01)
pdf=dnorm(x)
y=seq(-10, 10, .01)
pdy=dnorm(y, mean=1, sd=4)
plot(x, pdf, type="l", col="red")
lines(y, pdy, type="l", col="blue")

dbinom(n=10, p=0.5)
pbinom(4,5,0.5)
dbinom(0, 5, 0.5) + dbinom(1, 5, 0.5) + dbinom(2, 5, 0.5) + dbinom(3, 5, 0.5) + dbinom(4, 5, 0.5)
dbinom(3,5,0.5)
qt(0.975,15)
qchisq(0.95,7)

#- Le quantile d’ordre 0,975 d’une loi N(0,1)
qnorm(.975)
#- Le quantile d’ordre 0,95 d’une loi de St(10)
qt(.95, 10)
#- La probabilité qu’une v.a. de loi B(5;0,3) soit égale à 4
dbinom(4, 5, .3)
#- Le quantile d’ordre 0,95 d’une loi du Chi-deux(10).
qchisq(.95, 10)

# - Taper les codes permettant d’obtenir la loi de probabilité d’une v.a. de loi de Poisson de paramètre 2,4 : calcul des P(X=x) pour x=0,1,..,25 puis les range dans un vecteur y. Représenter graphiquement cette loi sous forme d’un diagramme en bâtons

x <- c(1:25)
y = dpois(x, lambda=2.4)
hist(y, freq=FALSE)


x = rpois(20, 2)
fn = ecdf(x)
plot(fn, verticals=TRUE, do.points=FALSE)


n = 1000
x = rnorm(n) # - genere un vecteur x de 1000 valeurs aleatoires obtenues avec la loi normale
m = cumsum(x) / (1:n) # - fait la somme cumulative des x divisee par 1 à n
v = 1 # - variance
q = qnorm(0.975) # interval de confiance
ic1 = m+q*sqrt(v) / sqrt(1:n) # borne sup de l'interval
ic2 = m-q*sqrt(v) / sqrt(1:n) # borne inf de l'interval
plot(m, type="l")
abline(h=0, col="red")
lines(ic1, col="blue")
lines(ic2, col="green")
# - l'interval de confiance contenant la moyenne empirique se reduit quand n augmente

x <- rbinom(n=100000, p=1/3, size=1)
mean(x);

n_ech = 50000
sz_ech = 300
prob = 1/2
avgs = rep(0, n_ech)
for(i in 1:n_ech){
  ech = rt(n=sz_ech, df=20, ncp=0)
  avgs[i] = mean(ech)
}

hist(avgs, freq=F)
mean(avgs)
var(avgs)
prob*(1-prob) / sz_ech

