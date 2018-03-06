#' count the occurrences of a provided keyword
#'
#' @export
#' @keywords bRth
#' @param x a variable 
#' @param data specify a dataset for the variables x and y
#' @param key the string or number to match
#' @return countK returns the number of times a key occurs in x
#' @examples 
#' countK(Gender,"M",data=StudentSurvey,)
#' IQRK(Smoke,"Y")
countK=function(var1,key,data){
  if(missing(data)){
    x=var1
  }
  else{
    pars=as.list(match.call()[-1])
    x=data[ ,as.character(pars$var1)]
  }
  length(which(x==key))
}

