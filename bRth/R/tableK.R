#' Create a table from categorical variable(s)
#' 
#' @export
#' @keywords bRth
#' @param x a variable or a formula x~y
#' @param y a variable (set to NULL if x is a formula)
#' @param data specify a dataset for the variables x and y
#' @return tableK is a wrapper for base::table
#'    that adds the functionality of specifying data=<dataset>
#'    and the option of providing a function x~y 
#'    in the input arguments
#' @examples 
#' tableK(Gender,data=StudentSurvey)
#' table(Gender~Smoke, data=StudentSurvey)
#' table(StudentSurvey$Gender,StudentSurvey$Smoke)
tableK=function(var1,var2=NULL,data){
 var1cls=try(class(var1),silent=TRUE)
 if(class(var1cls)=="try-error"){
   pars=as.list(match.call()[-1])
   x=data[ ,as.character(pars$var1)]
   if(!is.null(pars$var2)) y=data[ ,as.character(pars$var2)]
   if(is.null(pars$var2)) table(x) else table(x,y)
 }
 else{ #class of var1 must have been a formula...
   funvars=attr(terms(var1),"variables")
   x=data[[toString(funvars[2])]]
   y=data[[toString(funvars[3])]]
   table(x,y)
 }
}