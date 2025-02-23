# the code below will calculate descriptive statistics for a variable of interest grouped by another variable
# the tidyverse package must be loaded before this will work

# replace the blank below with a continuous variable you want to summarize
x.var <- "___" 


# replace the blank below with the name of the dataframe
df.sum <- ___  |>  
  # remove missing values from continuous variables
  filter(!is.na(.data[[x.var]])) |> 
  
  # replace the blank with the categorical variable(s) (aka factors)
  group_by(___) |> 
  
  # calculate the descriptive stats
  summarize(Mean = mean(.data[[x.var]]), 
            Median = median(.data[[x.var]]), 
            SD = sd(.data[[x.var]]), 
            IQR = IQR(.data[[x.var]]), 
            Min = min(.data[[x.var]]),
            Max = max(.data[[x.var]]),
            Sample.size = n())

df.sum