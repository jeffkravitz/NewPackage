jeff_mode <- function(x) {
  y <- c()
  mode_list <- c()
  x_copy <- x
  for (i in 1:length(x)) {
    y[i] <- length(which(x %in% x[i]))
  }
  max_count_pos <- match(max(y),y)
  max_count <- max(y)
  #Check for multiple modes
  for (i in 1:length(x)) {
    if (y[i] == max_count) {
      if ((x[i] %in% x_copy[-1]) == FALSE) {
        mode_list <- c(mode_list,x[i])
      }
    }
    x_copy <- x_copy[-1]
  }
  return(mode_list)
}
