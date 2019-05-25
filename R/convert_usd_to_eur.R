#' USD amount in EUR
#'
#' Looks up the most recent USD/EUR exchange rate and computes the provided USD amount in EUR.
#'
#' @export
#'
#' @param usd_amount The amount in USD to be converted to EUR.
#'
#' @return Returns the USD amount in EUR as a number.
#'
#' @examples
#' convert_usd_to_eur(100)

convert_usd_to_eur <- function(usd_amount) {
  usd_amount * eurusd()
}
