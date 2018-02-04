#' Draw a histogram
#' 
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @return histK is a wrapper for base::hist
#'    that adds the functionality of specifying data=<dataset>
#'    in the input arguments
#' @examples 
#' meanK(Height,data=StudentSurvey)
#' meanK(Height,data=StudentSurvey,na.rm=TRUE)
histK=function(var1,data,...){
  if(missing(data)){
    x=var1
    hist(x,...)
  }
  else{
    pars = as.list(match.call()[-1])
    x = data[, as.character(pars$var1)]
  }
  hist(x,...)
}