#' Little Forecast
#'
#' This does an arima forecast
littleforecast <- function(data, nyears=10){
  fit <- forecast::auto.arima(data)
  fc <- forecast::forecast(fit, h = nyears)
  ggplot2::autoplot(fc)
}
