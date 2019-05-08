library(tidyverse)
library(lubridate)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read_csv("data.csv")

data <- mutate(data,
               db_year = year(
                 dmy(
                   fecha_nacimiento)))

purchased <- function(x){
  if (x == "cerrado"){
    return(1)
  }
  else if (x == "aceptado"){
    return(1)
  }
  else {
    return(0)
  }
}


#outcome <- c()

#for (i in data$estatus)  outcome <- c(outcome,{
#  purchased(i)
#})

data$outcome <- sapply(data$estatus, FUN = purchased)


mid_dbyear <- median(na.omit(data$db_year))
mid_auto <- median(na.omit(as.numeric(data$auto)))


contingency_dbyear <- matrix(c(NA, NA, NA, NA),
                             2,
                             2)


sum(data$outcome[which(data$auto > mid_auto)])/
length(data$outcome[which(data$auto > mid_auto)])

sum(data$outcome[which(data$auto < mid_auto)])/
length(data$outcome[which(data$auto < mid_auto)])

sum(data$outcome[which(data$db_year > mid_dbyear)])/
length(data$outcome[which(data$db_year > mid_dbyear)])

sum(data$outcome[which(data$db_year < mid_dbyear)])/
length(data$outcome[which(data$db_year < mid_dbyear)])
