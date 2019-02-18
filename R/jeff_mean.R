jeff_mean <- function(x) {
  func_mean <- 0
  for (i in 1:length(x)) {
    func_mean <- func_mean + (x[i]/length(x))
  }
  return(func_mean)
}
