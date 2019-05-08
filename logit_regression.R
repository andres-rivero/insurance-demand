library(aod)
library(ggplot2)

logit <- glm(outcome ~ auto + db_year, data = data, family = "binomial")

summary(logit)