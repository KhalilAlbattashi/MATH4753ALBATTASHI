#' @title myCurve Function
#'
#' @param mu which is the mean
#' @param sigma which is the standard deviation
#'
#' @return a plot of the normal distribution
#' @export
#'
#'
#'
#'
mycurve = function(x ,mu, sigma){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),col="Black",lwd=2,
        xlab = "Y",ylab="normal density")


  # Y values corresponding t0 the x values
  ycurve=dnorm(x,mean=mu,sd=sigma)

  # Fill in the polygon with the given vertices
  polygon(c(x),c(0,ycurve,0),col="Red")

  # Put in the text with the appropriate area

  # Area
  prob=pnorm(x,mean=mu,sd=sigma)
  prob=round(prob,4)

  # Click to paste the text onto the graph
  text(x=2.15, y=0.025, paste("Area = ", prob, sep=""))
}
