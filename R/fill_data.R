
#' @title Populate Column Downwards with a Non-missing Value
#' @author Cornelius Tanui: \email{kiplimocornelius@@gmail.com}
#' @description This function is inspired by `data.table`'s `rleid()`, and allows
#'     the user to specify starting point(location) of the value to be used to
#'     populate the missing rows of a column.
#' @seealso \code{data.table::rleid()}
#' @param x An object of type data.frame
#' @param var The column in which to populate values
#' @param row_num The first non-missing row number in column `var` that contains
#'     the value to be populated downwards
#' @return A data.frame
#' @export
#'
#' @examples
#'
#' # Generate sample data
#' x <-
#'   data.frame(
#'     index = 1:10,
#'     sex = c(rep("", 2), "Male", rep("", 3), "Female", rep("", 3))
#'   )
#'
#' x
#'
#' # Populate missing rows of a column, based on the last available value

#' fill_data(
#'   x = x,
#'   var = "sex",
#'   row_num = 3
#' )
#'
#'
fill_data <- function(x, var, row_num){
  for (i in row_num:nrow(x)) {
    if(!is.na(x[, var][i])){
      if(x[, var][i] == "") {
        x[, var][i] <- x[, var][i-1]
      }
    }
  }
  return(x)
}



