# this code will make a scatter plot 
# if you do not want a line of best fit, then delete the geom_smooth() line

scatter.plot <- ggplot(
    data = ___, #put the data frame name here
    
    #set the aesthetics
    aes(x = ___,       #independent variable = x
        y = ___)) +    #dependent variable = y
  
  #add points
  geom_point(aes(color = ___), #categorical variable
             size = 3,         #sets the size of the points
             alpha = 0.5) +    #sets transparency of the points
  
  #add best fit line
  geom_smooth(method = "lm", se = TRUE, color = "black") + 
  
  #nicer labels (see axis.labels.R script)
  ylab("___") +
  xlab("___") +
  labs(color = "___") + #label for the color key
  
  #change y-axis to log-scale
  scale_y_log10(guide = "axis_logticks") +  
  
  #change y-axis to log-scale
  scale_x_log10(guide = "axis_logticks") + 
  
  #additional formatting
  theme_classic(base_size = 16)  +  #sets the font size
  theme(legend.position = "top")   #controls legend/key

scatter.plot

#see the resources below for some additional options to make a nice scatter plot 
# https://www.datanovia.com/en/lessons/ggplot-scatter-plot/
# https://ggplot2.tidyverse.org/index.html