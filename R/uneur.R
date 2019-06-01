#' Reverse Euro format
#'
#' Converts a string in Euro format to number.
#'
#' @export
#'
#' @importFrom stringr str_replace str_replace_all
#'
#' @param x The string in Euro format to be transformed to number.
#'
#' @return Returns a number.
#'
#' @examples
#' uneur("€100,000.34")
#'
#' @seealso \code{\link{eur}}

uneur <- function(x) {
  as.numeric(format(str_replace_all(str_replace(x, "€", ""), ",", ""), nsmall = 2))
}
