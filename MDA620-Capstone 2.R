library(readxl)
hockeystats <- read_excel("Downloads/hockeystats.xlsx")
View(hockeystats)

glimpse(hockeystats)

model1 = lm(TOI ~ GP, data = hockeystats)
summary(model1)
#comparing TOI on games played, the estimate is 18.73, this means that as you increase 
#games played by, TOI will increase by 18.37


model2 = lm(TOI ~ ASSITS, data = hockeystats)
summary(model2)
#comparing TOI on assists, the estimate is 32.28 which means as you increase assist by 1
#toi increases by 32.28

model3 = lm(TOI ~ PTS, data = hockeystats)
summary(model3)
#comparing TOI on assists, the estimate is 20.29 which means as you increase plus minus by 1
#toi increases by 20.29

model4 = lm(TOI ~ GP+ASSITS+PTS, data = hockeystats)
summary(model4)
#GP = 13.86
#ASSISTS = 11.11
#PTS = -7.52