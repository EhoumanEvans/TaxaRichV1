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
