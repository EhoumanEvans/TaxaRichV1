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
