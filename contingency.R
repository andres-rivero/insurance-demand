library(tidyverse)
library(lubridate)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("data.csv")

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
mid_auto <- median(na.omit(data$db_year))