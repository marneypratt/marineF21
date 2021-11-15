
#this code will make stacked bar graphs for each behavior for a grouping variable

ggplot(
  data = ___, 
  aes(x = ___, y = ___, fill = behavior)) + #put the grouping factor to compare as the x
  geom_bar(position = "fill", stat="identity")+
  
  #Make your behavior names look nicer
  #replace the blanks below with the name of the behaviors
  #make sure they are in the same order as the dataset (most likely this is alphabetical)
  #add or subtract "__",  as needed so you have the same number as the number of different behaviors
  scale_fill_discrete(name="Behaviors",
                      labels=c("___", 
                               "___",
                               "___", 
                               "___", 
                               "___",
                               "___")) +
  xlab("___") +
  ylab("___") +
  coord_cartesian(ylim=c(0,1), expand=FALSE, clip='off') +
  theme_classic(base_size=12)  



#see the resources below for some additional options to make a nice plot 
# https://www.r-graph-gallery.com/48-grouped-barplot-with-ggplot2.html
# https://ggplot2.tidyverse.org/index.html
# https://r-charts.com/part-whole/stacked-bar-chart-ggplot2/