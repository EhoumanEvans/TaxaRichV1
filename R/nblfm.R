nblfm= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package \"dplyr\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  #Calcualte Number of species by life form
  outputlfm<- as.data.frame(table(x[,6]))
  
  #Pass the result to a dataframe and change the name of the colums
  outputlfm= outputlfm %>% 
    rename(
      Life.form= Var1,
      Number.of.species =  Freq 
    )
  
  return(outputlfm)
}
