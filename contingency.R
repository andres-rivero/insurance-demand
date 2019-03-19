library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- read.csv("data.csv")

data <- mutate(data,
               year = year(
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

