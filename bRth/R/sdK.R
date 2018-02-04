#' Compute the standard deviation of a quantitative variable
#' 
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @param na.rm select whether to omit NA, default is FALSE
#' @return sdK is a wrapper for base::sd
#'    that adds the functionality of specifying data=<dataset>
#'    in the input arguments
#' @examples 
#' sdK(Height,data=StudentSurvey)
#' sdK(Height,data=StudentSurvey,na.rm=TRUE)
sdK=function(var1,data,na.rm=FALSE){
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  sd(x,na.rm=na.rm)
}