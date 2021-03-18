rm(list=ls())
df <- read.csv(file="./volatility.csv")
head(df)


AAPL.PVol = df$AAPL.PVol
GOOG.PVol = df$GOOG.PVol
AMZN.PVol = df$AMZN.PVol
GSPC.PVol = df$GSPC.PVol
VIX.Close = df$VIX.Close
AAPL.Close = df$AAPL.Close
VXAPLCLS = df$VXAPLCLS
VXAZNCLS = df$VXAZNCLS
VXGOGCLS = df$VXGOGCLS 
GOOG.Close = df$GOOG.Close
AMZN.Close = df$AMZN.Close
GSPC.Close = df$GSPC.Close 
Date = df$Date
AAPL.Ret = df$AAPL.Ret
AMZN.Ret = df$AMZN.Ret
GOOG.Ret = df$GOOG.Ret
GSPC.Ret = df$GSPC.Ret
AAPL.Vol = df$AAPL.Vol


cov(cbind(AAPL.PVol,GOOG.PVol,AMZN.PVol,GSPC.PVol))

# Getting descriptive statistics
summary(AAPL.PVol)
summary(GOOG.PVol)
summary(AMZN.PVol)
summary(GSPC.PVol)

# The Pearson correlation among all of the pairs of quantitative 
# variables, correlations shows below:
  
# Fitting a simple linear regression model for AAPL.Vol and 
# each independent variable, and checking the five key
# assumptions: Linear relationship, Multivariate normality, 
# No multicollinearity, No auto-correlation and Homoscedasticity, 
# the assumptions of the simple linear regression are acceptable.
summary(lm(AAPL.Vol~AAPL.PVol))

summary(lm(AAPL.Vol~GOOG.PVol))

summary(lm(AAPL.Vol~AMZN.PVol))

summary(lm(AAPL.Vol~GSPC.PVol))

summary(lm(AAPL.Vol~AAPL.PVol+GOOG.PVol+AMZN.PVol+GSPC.PVol))

plot(AAPL.PVol,AAPL.Vol)
abline(lm(AAPL.Vol~AAPL.PVol))

plot(AAPL.PVol,AAPL.Vol)
abline(lm(AAPL.Vol~AAPL.PVol))

plot(AAPL.PVol,AAPL.Vol)
abline(lm(AAPL.Vol~AAPL.PVol))

