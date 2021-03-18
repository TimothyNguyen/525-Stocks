#install.packages("lmtest")
#install.packages("dynlm")
#install.packages("sandwich")
#install.packages("RFGLS")
library(lmtest) # Testing Linear Regression Models
library(dynlm) # Dynamic Linear Regression
library(sandwich) # Robust Covariance Matrix Estimators
library(bdsmatrix)
library(RFGLS)
load("ARE106_Final_Electricity.RData")
head(D)
elec <- ts(D[,2])
temp <- ts(D[,3])
summary(lm(log(elec)~log(temp)))
2.8383+1.965*0.2811
2.8383-1.965*0.2811
?acf
autocorrelation <- acf(D, lag.max=20, plot=FALSE)
# Plot figure
plot(autocorrelation,
     main="Autocorrelation",
     xlab="Lag Parameter",
     ylab="ACF")
dwtest(lm(log(elec)~log(temp)))
fgls(log(elec)~log(temp),data = parent.frame(), tlist = tlist, sizelist = sizelist,
     sizeLab = "OOPP",Mz = TRUE,Bo = TRUE,Ad = TRUE,Mix = TRUE,indobs = TRUE,
     get.hessian=FALSE,vmat = NULL,subset, weights, na.action)



