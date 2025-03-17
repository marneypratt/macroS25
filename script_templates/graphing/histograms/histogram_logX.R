#this code will make a histogram
#you can add faceting to split by factors
#use the standard deviation as a first guess for the binwidth
#then go up and down from there to find a useful binwidth

#first calculate the central tendency you want for each group
df.sum <- ___ |>             #data frame name here
  group_by(___) |>           #name of factor here
  summarise(median = median(___), #continuous variable here
            mean = mean(___))     #continuous variable here


histogram.plot <- ggplot(
  data = ___, #put the data frame name here
  
  #set the aesthetics
  aes(x = ___,        #x must be a continuous variable
      fill = ___)) +  #factor as fill
  
  #plot a histogram
  #note that something on the order of the log(SD) is a good start for the binwidth
  geom_histogram(binwidth = __,   #change the binwidth as needed
                 color = "white", 
                 show.legend = FALSE) + 
  
  #adds a vertical line for the central tendency
  geom_vline(data = df.sum,
             aes(xintercept = median),  #change to mean if normal
             col='red',
             size=2)+
  
  facet_grid(___ ~ .) + #put the factor here
  
  #nicer labels (see axis.labels.R script)
  xlab("___") +  #formatted label for continuous variable (include units as needed)
  ylab("Count") +
  
  scale_x_log10() +     #changes x-axis to log-scale
  annotation_logticks(sides = "b") + # adds log-scale tick marks
  
  #additional formatting
  theme_classic(base_size = 16)  +  #sets the font size
  theme(legend.position = "none")   #controls legend/key

histogram.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-histogram/
# https://ggplot2.tidyverse.org/index.html