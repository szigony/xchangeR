# Write a function that reverses eur, eg call it uneur, so it takes a string (eg "-€0.10") and transforms to a number (eg -0.10 in this case).
# Make sure it works with the "big mark" as well (eg for "$100,000")

#' Reverse Euro format
#'
#' Converts a string in Euro format to number.
#'
#' @export
#'
#' @importFrom stringr str_replace
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
  format(str_replace(str_replace(x, "€", ""), ",", ""), nsmall = 2)
}
