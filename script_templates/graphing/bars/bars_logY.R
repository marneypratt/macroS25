# this code will make a bar graph with means and standard errors

#first calculate the mean, sd, & count the observations in each group
df.sum <- ___ |>             #data frame name here
  group_by(___) |>           #name of factor here
  summarise(mean = mean(___), #continuous variable here
            sd = sd(___),     #same continuous variable as above here
            n = n()) |>       #don't change anything here
  
  #calculate the standard error
  mutate(sem = sd/(sqrt(n)))

#make bar graph
bar.plot <- ggplot(
  data=df.sum,      #put the factor on the x-axis
  aes(x = ___,  
      y = mean,     
      fill = ___))+  #same factor as x-axis for fill
  
  #makes bars
  geom_bar(stat="identity",  
           width = 0.5)+
  
  #adds error bars
  geom_errorbar(aes(ymin=mean-sem, ymax=mean+sem), 
                width=0.1, 
                size=1) +
  
  #nicer labels (see axis.labels.R script)
  ylab("___") +
  xlab("___") +
  
  #changes to log-scale
  scale_y_log10() +     #changes y-axis to log-scale
  annotation_logticks(sides = "l") + # adds log-scale tick marks
  
  #adjust the second number in xlim to be 
  #0.5 greater than the number of groups in 1st factor
  coord_cartesian(xlim = c(0.5,2.5), expand=FALSE) + 
  
  theme_classic(base_size=16) +
  theme(legend.position="none")

bar.plot 

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-barplot/
# https://ggplot2.tidyverse.org/index.html