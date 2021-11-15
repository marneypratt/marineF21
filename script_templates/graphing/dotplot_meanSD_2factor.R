
# this code will make a dot plot with median and all points included
# make sure you have loaded the ggbeeswarm package to use geom_quasirandom()
# alternatively, you can use geom_jitter() instead


ggplot(
  data = ___,   #put the data frame name here
  aes(x = ___, y = ___, fill = ___, color = ___)) +  
  geom_quasirandom(
    shape=21, size=2, alpha = 0.5, width = 0.2, #play with these values as needed
    dodge.width = 1) + #adjust the dodge width as needed
  stat_summary(fun = mean, 
               fun.min = function(x) mean(x) - sd(x), 
               fun.max = function(x) mean(x) + sd(x), 
               na.rm = TRUE, 
               size = 1, #play with this value as needed
               position=position_dodge(width=1), #match this width to dodge.width above
               show.legend = FALSE) + 
  ylab("___") +
  xlab("___") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=14)  


#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-dot-plot/
# https://ggplot2.tidyverse.org/index.html