data <- read_csv("data.csv")


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