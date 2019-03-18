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

data$outcome <- sapply(data$estatus, FUN = purchased)