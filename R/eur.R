#' Create Euro format
#'
#' Converts a number to a string using the Euro sign, rounding up to 2 digits and using the comma as the separator.
#'
#' @export
#'
#' @importFrom stringr str_replace
#'
#' @param x The number to be formatted as Euro.
#'
#' @return Returns a string in Euro format.
#'
#' @examples
#' eur(100)
#' eur(-100000.34561)
#'
#' @seealso \code{\link{uneur}}

eur <- function(x) {
  amount <- format(round(x, 2), nsmall = 2, big.mark = ",")

  eur_amount <- ifelse(amount < 0, paste0("-", str_replace(amount, "-", "€")), paste0("€", amount))

  return(eur_amount)
}
