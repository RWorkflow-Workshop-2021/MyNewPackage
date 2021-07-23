#' Little Forecast
#'
#' This does an arima forecast
#'
#' @examples
#' library(stats)
#' lm(a ~ b, data=df)
littleforecast <- function(data, nyears=10, type=c("red", "blue", "green")){
  # tests
  if(!is.integer(nyears)) stop("nyears must be integer")
  type <- match.arg(type)

  fit <- forecast::auto.arima(data)
  for(i in 1:10000){
    cat(i)
  }
  fc <- forecast::forecast(fit, h = nyears)
  ggplot2::autoplot(fc)
}
