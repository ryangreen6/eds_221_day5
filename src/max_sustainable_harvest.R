#' Maximum Sustainable Harvest
#' 
#' A little function to return the maximum sustainable harvest given the carrying capacity and growth rate.
#'
#' @param K A number indicating the carrying capacity of the fishery (in individuals)
#' @param r A number indicating the intrinsic growth rate of the fishery (in 1/year)
#'
#'
#' @return A number indicating the maximum annual sustainable harvest for the fishery
#' @export 
#'
#' @examples
#' max_sustainable_harvest(K=36000, r=0.62)
#' 
#' 
#' 
max_sustainable_harvest <- function(K, r){
  harvest <- (K*r)/4
  return(harvest)
}