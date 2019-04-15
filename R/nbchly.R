#' This function is allows you to calculate the number of species per chorology in a floristic data table
#'
#' @param x data matrix of floristic inventory, the name of each colum is as follow : 'genera', 'epit.spec', 'specie', 'family', 'life.form', 'chorology'.
#' @keywords family 
#' @author Evans Ehouman
#' @return to a data.frame of number of species in each chorology origin
#' @export
#' @examples
#' # Find the number of species in the chorology of the sample dataframe
#' releveforet is a floristic data table
#' nbchly(releveforet) 
#' gives the number of species per choloroligcal origins
#' 


nbchly= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package \"dplyr\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  #Calcualte Number of species by genera
  outputchly<- as.data.frame(table(x[,5]))
  
  #Pass the result to a dataframe and change the name of the colums
  outputchly= outputchly %>% 
    rename(
      Chrorology= Var1,
      Number.of.species =  Freq 
    )
  
  return(outputchly)
}
