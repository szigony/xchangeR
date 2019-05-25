#' USD/EUR exchange rates
#'
#' Looks up the daily USD/EUR exchange rate via an API call for the specified date range.
#'
#' @export
#'
#' @importFrom httr GET content
#' @import dplyr
#' @importFrom data.table data.table as.data.table
#'
#' @param date_from The start of the range.
#' @param date_to The end of the range.
#'
#' @return Returns the daily exchange rates.
#'
#' @format Returns a \code{data.table}.
#' \itemize{
#'     \item \code{date}: The day for which the exchange rate was valid.
#'     \item \code{exchange_rate}: Daily exchange rate.
#' }
#'
#' @examples
#' eurusds("2019-05-01", "2019-05-24")
#'
#' @seealso \code{\link{eurusd}}

eurusds <- function(date_from, date_to) {
  exchange_rates <- content(
    GET("https://api.exchangeratesapi.io/history",
        query = list(
          base = "USD",
          symbols = "EUR",
          start_at = date_from,
          end_at = date_to
        ))
  )$rates

  eurusds <- data.table(
    date = as.Date(names(exchange_rates)),
    exchange_rate = as.numeric(unlist(exchange_rates))
  ) %>%
    arrange(date)

  return(as.data.table(eurusds))
}
