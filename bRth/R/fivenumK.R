#' Compute the five number summary of a quantitative variable
#' 
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @param na.rm select whether to omit NA, default is FALSE
#' @return fivenumK is a wrapper for base::fivenum
#'    that adds the functionality of specifying data=<dataset>
#'    in the input arguments
#' @examples 
#' fivenumK(Height,data=StudentSurvey)
#' fivenumK(Height,data=StudentSurvey,na.rm=TRUE)
fivenumK=function(var1,data,na.rm=FALSE){
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  fivenum(x,na.rm=na.rm)
}