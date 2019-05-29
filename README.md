# xchangeR
A package to acquire the EUR/USD exchange rates from the [Exchange Rates API](https://exchangeratesapi.io/) and format the numbers as euros. It also allows for easy conversion of USD to EUR.

This package was created as the take-home assignment for *Mastering R skills* at CEU, Budapest.

#### Table of contents

- [Installation](#installation)
- [Functions](#functions)
- [Use-case](#use-case)
- [Website](#website)

## Installation

`xchangeR` is not on CRAN yet, please install from GitHub:
```r
remotes::install_github('szigony/xchangeR')
```

## Functions

- [**`eurusd`**](R/eurusd.R)
  - Looks up the most recent USD/EUR exchange rate via an API call and returns the rate as a number.
- [**`eurusds`**](R/eurusds.R)
  - Looks up the daily USD/EUR exchange rate via an API call for the specified date range.
  - Parameters:
    - `date_from` - The start of the range.
    - `date_to` - The end of the range.
    - `last_x_days` - Return the exchange rates for the last X days compared to `date_to` or today.
- [**`convert_usd_to_eur`**](R/convert_usd_to_eur.R)
  - Looks up the most recent USD/EUR exchange rate and computes the provided USD amount in EUR.
  - Parameter:
    - `usd_amount` - The amount in USD to be converted to EUR.
- [**`eur`**](R/eur.R)
  - Converts a number to a string using the Euro sign, rounding up to 2 digits and using the comma as the separator.
  - Parameter:
    - `x` - The number to be formatted as Euro.
- [**`uneur`**](R/uneur.R)
  - Converts a string in Euro format to number.
  - Parameter:
    - `x` - The string in Euro format to be transformed to number.

## Use-case

A vignette demoing the usage of `eurusds` and `eur` with Bitcoin data from Binance is available [here](vignettes/eur-eurusds.Rmd).

## Website

A website showcasing the package's capabilities was created with `pkgdown`, and is available [here](https://szigony.github.io/xchangeR/).
