#' Make a dotplot-style histogram from small sample
#'
#' @export
#' @keywords bRth
#' @param x a quantitative variable
#' @param data the dataset from which x comes
#' @param xlab x axis label
#' @param main main title
#' @return dotplot
#' @examples 
#' dottyK(Height,data=StudentSurvey) 
#' dottyK(Height,data=StudentSurvey,main="Heights from Student Survey Data")
dottyK=function(var1,data,xlab,main){
  if(missing(xlab)) xlab=deparse(substitute(var1))
  if(missing(main)) main=""
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  # plot(sort(x), sequence(table(x)),ylab="count",xlab=deparse(substitute(var1)))
  plot(sort(x), sequence(table(x)),ylab="count",xlab=xlab,main=main)
}