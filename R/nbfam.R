#' This function is allows you to calculate the number of species per family in a floristic data table
#'
#' This function converts input temperatures in Fahrenheit to Kelvin.
#' @param x data matrix of floristic inventory, the name of each colum is as follow : 'genera', 'epit.spec', 'specie', 'family', 'life.form', 'chorology'.
#' @keywords family 
#' @author Evans Ehouman
#' @return to a data.frame of number of species in each family.
#' @export
#' @examples
#' # Find the number of species in the family of the sample dataframe
#' nbfam(releveforet)
#' 

nbfam= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package \"dplyr\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  #Calcualte Number of species by genera
  outputfam <- as.data.frame(table(x[,4]))
  
  #Pass the result to a dataframe and change the name of the colums
  outputfam= outputfam %>% 
    rename(
      Families= Var1,
      Number.of.species =  Freq 
    )
  
  return(outputfam)
}
