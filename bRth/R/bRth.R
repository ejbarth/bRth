#' bRth: A Package of Wrappers for Commonly-Used Base R Functions
#'
#' bRth provides a collection of wrappers for base R functions
#'    for summary statistics (mean, sd, table, median, fivenum, etc)
#'    that have been modified to employ a uniform input argument calling strategy, 
#'    including data=<dataframe> and the ability
#'    to input a formula var1~var2 in places that the base functions 
#'    accept only pairs of variables (cor, table).  The motivation is to extend the
#'	similarities in calling the plot() and lm() functions, together with the
#'	na.rm formalism from mean(), to other commonly-used summary statistics functions. 
#'	The naming convention in bRth is <function_name>K:
#' 
#' @section bRth functions:
#' The bRth functions ...
#'
#'  corK, countK, dottyK, fivenumK, histK, IQRK, meanK, medianK, sdK, tableK
#'
#' @docType package
#' @name bRth
NULL