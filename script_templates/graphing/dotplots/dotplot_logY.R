#this code will make a dot plot with median and all points included
#make sure you have loaded the ggbeeswarm package to use geom_quasirandom()

dot.plot <- ggplot(
  data = ___, #put the data frame name here
  
  #set the aesthetics
  aes(x = ___,       #put the factor on the x-axis
      y = ___,       #continuous variable = y
      color = ___)) + #same factor as x-axis for color
  
  #adds quasirandom jittered points
  geom_quasirandom(
    shape = 19,            #shape as circle
    size = 2,              #size of point
    alpha = 0.8,           #transparency
    width = 0.25) +        #spread
  
  #adds median (change to mean if normal)
  stat_summary(
    fun = median,       #graphs the median
    geom = "crossbar",  #crossbar shape
    width = 0.25,        #width of the bar
    linewidth = 0.75,   #thickness of bar
    color = "black") +  #color 
  
  #nicer labels (see axis.labels.R script)
  ylab("___") +
  xlab("___") +
  
  #changes to log-scale
  scale_y_log10() +     #changes y-axis to log-scale
  annotation_logticks(sides = "l") + # adds log-scale tick marks
  
  #additional formatting
  theme_classic(base_size = 16)  +  #sets the font size
  theme(legend.position = "none")   #controls legend/key

dot.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-dot-plot/
# https://ggplot2.tidyverse.org/index.html