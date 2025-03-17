# this code will make a boxplot with mean and all points included
# make sure you have loaded the ggbeeswarm package to use geom_quasirandom()
# alternatively, you can use geom_jitter() instead

box.dot.plot <- ggplot(
  data = ___, #put the data frame name here
  
  #set the aesthetics
  aes(x = ___,       #put the factor on the x-axis
      y = ___,       #continuous variable = y
      fill = ___, color = ___)) + #same factor as x-axis for fill & color
  
  #adds boxplots
  geom_boxplot(
    width = 0.2,          #width of box
    alpha = 0.5,          #transparency
    color = "black",      #color of outline
    outlier.shape = NA) + #removes outliers
  
  #adds quasirandom jittered points
  geom_quasirandom(
     shape = 21,            #shape as open circle
     size = 1,              #size of point
     alpha = 0.5,           #transparency
     width = 0.25) +        #spread
  
  #nicer labels (see axis.labels.R script)
  ylab("___") +
  xlab("___") +
  
  #changes to log-scale
  scale_y_log10() +     #changes y-axis to log-scale
  annotation_logticks(sides = "l") + # adds log-scale tick marks
  
  #additional formatting
  theme_classic(base_size = 16)  +  #sets the font size
  theme(legend.position = "none")   #controls legend/key

box.dot.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-boxplot/
# https://ggplot2.tidyverse.org/index.html