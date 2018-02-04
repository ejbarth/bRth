#' Compute correlation from quantitative variable(s)
#' 
#' @export
#' @keywords bRth
#' @param x a variable or a formula x~y
#' @param y a variable (set to NULL if x is a formula)
#' @param data specify a dataset for the variables x and y
#' @param na.rm  determine whether to omit NA,  default is FALSE
#' @return corK is a wrapper for base::cor
#'    that adds the optional functionality of passing a function x~y
#'    and the NA handling option na.rm=
#'    for consistency with plot() and lm() 
#' @examples 
#' corK(Height,Weight,data=StudentSurvey)
#' corK(Height~Weight, data=StudentSurvey)
#' corK(StudentSurvey$Gender,StudentSurvey$Smoke,na.rm=TRUE)
corK=function(arg1,arg2=NULL,data,na.rm=FALSE){
    if (missing(data)){  #arg1 and arg2 have dataset included
	    if (class(arg1)=="formula"){
	      funvars=attr(terms(arg1),"variables")
		    x=unlist(eval(funvars)[1])
		    y=unlist(eval(funvars)[2])
	     }
	    else{ #no formula
	      x=arg1
		  y=arg2
	     }
		}
    else{  #dataframe specified, arg1 and arg2 need special handling
		
        arg1cls=try(class(arg1),silent=TRUE)
        if(class(arg1cls)=="try-error"){ #arg1 not a formula
           pars=as.list(match.call()[-1])
           x=data[ ,as.character(pars$arg1)]
           y=data[ ,as.character(pars$arg2)]
        }	
        else{ #first arg is a formula
	       funvars=attr(terms(arg1),"variables")
	       x=data[[toString(funvars[2])]]
		   y=data[[toString(funvars[3])]]
        } 
	 
    }
  
#Now that we've parsed the variables, call cor with desired NA action
	if (na.rm){
	     cor(x,y,use="na.or.complete")
		   }
	else{ #complain if NA
		 cor(x,y)
		 }
}
