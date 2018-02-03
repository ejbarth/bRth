#' Compute the inter quartile range (IQR) of a quantitative variable
#' 
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @param na.rm select whether to omit NA, default is FALSE
#' @return IQR
#' @examples 
#' IQRK(Height,data=StudentSurvey)
#' IQRK(Height,data=StudentSurvey,na.rm=TRUE)
IQRK=function(var1,data,na.rm=FALSE,type=7){
  nn=na.rm
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  IQR(x,na.rm=nn,type=7)
}