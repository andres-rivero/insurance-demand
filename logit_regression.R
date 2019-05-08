library(aod)
library(ggplot2)
library(caret)
library(InformationValue)


set.seed(3456)
trainIndex <- createDataPartition(data$outcome, p = .8, 
                                  list = FALSE, 
                                  times = 1)

dataTrain <- data[ trainIndex,]
dataTest  <- data[-trainIndex,]


logit <- glm(outcome ~ auto + db_year, data = dataTrain, family = "binomial")

summary(logit)


predicted <- predict(logit, dataTest, type="response")