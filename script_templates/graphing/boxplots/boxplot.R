# this code will make a boxplot with mean and all points included
# make sure you have loaded the ggbeeswarm package to use geom_quasirandom()
# alternatively, you can use geom_jitter() instead

box.plot <- ggplot(
  data = ___, #put the data frame name here
  
  #set the aesthetics
  aes(x = ___,       #put the factor on the x-axis
      y = ___,       #continuous variable = y
      fill = ___)) + #same factor as x-axis for fill
  
  #adds boxplots
  geom_boxplot(
    width = 0.1,          #width of box
    alpha = 0.8,          #transparency
    color = "black")  +   #color of outline
  
  #nicer labels (see axis.labels.R script)
  ylab("___") +
  xlab("___") +
  
  #additional formatting
  theme_classic(base_size = 16)  +  #sets the font size
  theme(legend.position = "none")   #controls legend/key

box.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-boxplot/
# https://ggplot2.tidyverse.org/index.html