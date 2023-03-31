
#' @title Generate Formatted Tables
#' @author Cornelius Tanui: \email{kiplimocornelius@@gmail.com}
#' @description This function is a wrapper of `table1()`, and is tailored for
#'     three stratification variables
#'
#' @seealso \code{table1()}
#' @param data An object of type data.frame
#' @param group_var the grouping variable, must be non-missing
#' @param var1 First stratification variable, can be factor or numeric
#' @param var2 Second stratification variable, can be factor or numeric
#' @param var3 Third stratification variable, can be factor or numeric
#'     the value to be populated downwards
#' @return A data.frame
#' @export
#'
#' @examples
#'
#' # Sample data
#' x <-
#'   datasets::Titanic |>
#'   as.data.frame()
#'
#' # Generate table
#' gen_tables(
#'   data = x,
#'   group_var = x$Sex,
#'   var1 = x$Class,
#'   var2 = x$Survived,
#'   var3 = x$Freq
#' )

gen_tables <-
  function(data,
           group_var,
           var1, var2, var3){

    table1::table1(~ var1 + var2 + var3 | group_var,
           data = data,
           overall = c(right = "Total"),
           droplevels = TRUE) |>
      tibble::as_tibble() |>
      gt::gt() |>
      gt::tab_options(table.font.size = gt::px(10),
                  data_row.padding = gt::px(.5))
  }






