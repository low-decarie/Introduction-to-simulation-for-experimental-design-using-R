

#' Expand grid for data frames
#'
#' @param ... data.frames
#'
#' @return a data.frame with all combinations of levels in factors from the data.frames provideds as arguments.
#' @export
#'

expand.grid.df <- function(...){
  Reduce(function(...) merge(..., by=NULL), list(...))
  }