#' Conversion of factors to numeric values and scaling
#'
#' @param data_frame an experimental design data frame
#'
#' @return data.frame with all factor variables converted to numeric and scaled/centered
#' @export

num_scale_fact <- function(data_frame){
  ind <- sapply(data_frame, is.factor)
  data_frame[paste0("num_",names(data_frame[ind]))] <- 
    lapply(data_frame[ind],
           function(x)scale(as.numeric(x)))
  return(data_frame)
}