# to use this code, the following packages must be loaded
# tidyverse

# replace the blank below with a continuous variable of interest
x.var <- "___" 

#calculate rounded SD
#replace the blank below with the name of the dataframe
___ |> 
  
  # replace the blank with the categorical variable(s)
  group_by(___) |> 
  
  # remove missing values 
  filter(!is.na(.data[[x.var]])) |> 
  
  #calculate the rounded values
  summarise(SD = signif(sd(.data[[x.var]]), digits=2))