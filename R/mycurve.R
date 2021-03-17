#' 
#' @title myCurve Function
#'
#' @param mu which is the mean
#' @param sigma which is the standard deviation 
#'
#' @return a plot of the normal distribution
#' @export
#'
#' @examples
#' 
#' 
mycurve = function(mu, sigma){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
}
