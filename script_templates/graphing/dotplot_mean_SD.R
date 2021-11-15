
# this code will make a dot plot with median and all points included
# make sure you have loaded the ggbeeswarm package to use geom_quasirandom()
# alternatively, you can use geom_jitter() instead


ggplot(
  data = ___, 
  aes(x = ___, y = ___, fill=___, color=___)) + 
  geom_quasirandom( 
    shape=21, size=3, alpha = 0.75, width=0.3) +
  stat_summary(fun = mean, 
               fun.min = function(x) mean(x) - sd(x), 
               fun.max = function(x) mean(x) + sd(x), 
               na.rm = TRUE, size = 1,
               show.legend = FALSE) +
  ylab("___") +
  xlab("___") +
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=14)  

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-dot-plot/
# https://ggplot2.tidyverse.org/index.html