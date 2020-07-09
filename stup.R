
stup <- read.csv(file.choose())
attach(stup)
View(stup)

summary(stup)

qqnorm(R.D.Spend)
qqnorm(Profit)
qqline(R.D.Spend)
qqline(Profit)

summary(stup)
pairs(stup)
cor(R.D.Spend, Profit)
cor(Administration, Profit)
cor(Marketing.Spend,Profit)

pairs(stup)


##### Removing Column name State
stup[4] <-NULL
stup


##### cor(setup) cannot execute as the column name state doesnt contain numeric value

#### Linear Model of intrest
#### excluding the coulmn name "State"

model.stup <- lm(Profit ~ R.D.Spend + Administration + Marketing.Spend)
### lm(Y~ X1+X2+X3)
summary(model.stup)

model.stupRD <- lm(Profit ~ R.D.Spend)
summary(model.stupRD)
#### p value is less than 0.05 with ***, so it is strongly signioficant


model.stupAd <- lm(Profit ~ Administration)
summary(model.stupAd)


cor(stup)

library(corpcor)
cor2pcor(cor(stup))

plot(model.stup)

summary(model.stup)


