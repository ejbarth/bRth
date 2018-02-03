#' Compute the mean of a quantitative variable
#' 
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @param na.rm select whether to omit NA, default is FALSE
#' @return mean value
#' @examples 
#' meanK(Height,data=StudentSurvey)
#' meanK(Height,data=StudentSurvey,na.rm=TRUE)
meanK = function(var1,data,na.rm=FALSE){
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  mean(x,na.rm=na.rm)
}