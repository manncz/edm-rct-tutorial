library(dRCT)

load('abTestData.RData')
## or
dat <- read.csv('abTestExample.csv')

### t-test
print(TTest <- t.test(complete~T,data=dat))
TTest$estimate[2]-TTest$estimate[1]
TTest$stderr


### use covariates
### covariates start with string "student_prior"
covariates <- dat[,startsWith(names(dat),'student_prior')]


LOOP <- with(dat,
     loop(Y= complete,Tr=T,Z=covariates))

print(LOOP)
confint(LOOP)


RELOOP <- loop(dat$complete,dat$T,dat[,startsWith(names(dat),'student_prior')],
               pred=reloop,yhat=dat$Yhat)

print(RELOOP)
confint(RELOOP)
