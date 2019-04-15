#' This function is allows you to calculate the number of species per genra in a floristic data table
#'
#' @param x data matrix of floristic inventory, the name of each colum is as follow : 'genera', 'epit.spec', 'specie', 'family', 'life.form', 'chorology'.
#' @keywords family 
#' @author Evans Ehouman
#' @return to a data.frame of number of species in each genera
#' @export
#' @examples
#' # Find the number of species in the genera of the sample dataframe
#' nbgr(releveforet)
#'

nbgr= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package \"dplyr\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  #Calcualte Number of species by genera
  outputgenr <- as.data.frame(table(x[,1]))
  
  #Pass the result to a dataframe and change the name of the colums
  outputgenr= outputgenr %>% 
    rename(
      Genera= Var1,
      Number.of.species =  Freq 
    )
  
  return(outputgenr)
}
