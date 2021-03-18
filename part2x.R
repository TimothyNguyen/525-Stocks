#install.packages("lmtest")
#install.packages("dynlm")
#install.packages("sandwich")
#install.packages("foreign")
#install.packages("AER")
library(lmtest) # Testing Linear Regression Models
library(dynlm) # Dynamic Linear Regression
library(sandwich) # Robust Covariance Matrix Estimators
library(foreign)
library(AER) # Applied Econometrics with R
D4 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/card.dta")
attach(D4)
head(D4)
wage <- ts(D4[,"wage"])
educ <- ts(D4[,"educ"])
head(educ)
q41<-lm(log(wage)~educ)
q41$coefficients
exper<-D4[,"exper"]
south<-D4[,"south"]
married<-D4[,"married"]
smsa<-D4[,"smsa"]
q43<-lm(log(wage)~educ+exper+south+married+smsa)
q43$coefficients
nearc4<-D4[,"nearc4"]
q44<-lm(log(wage)~nearc4+exper+south+married+smsa)
q44$coefficients
cor(nearc4,educ)
