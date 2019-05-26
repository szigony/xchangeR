#' USD/EUR exchange rate
#'
#' Looks up the most recent USD/EUR exchange rate via an API call and returns the rate as a number.
#'
#' @export
#'
#' @importFrom httr GET content
#'
#' @return Returns the exchange rate as a number.
#'
#' @examples
#' eurusd()
#'
#' @seealso \code{\link{eurusds}}

eurusd <- function() {
  content(
    GET(
      "https://api.exchangeratesapi.io/latest",
      query = list(
        base = "USD",
        symbols = "EUR"
      )
    )
  )$rates$EUR
}
