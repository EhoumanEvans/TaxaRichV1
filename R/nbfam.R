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
