
#' mean1
#'
#' @param x a numeric vector for which to compute mean
#'
#' @return a numeric value
#' @export
#'
#' @examples
#' x <- 1:20
#' mean1(x)
mean1 <- function(x){
  if(is.numeric(x)){
    return(mean(x))
  }
}



