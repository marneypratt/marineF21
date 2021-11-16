


summary.data <- my.data %>% 
  
  #remove when no animals were present 
  #replace blank with column name for total animals present
  filter(___ != 0) %>%   
  
  #change from wide to long format to make one column for all behaviors
  #replace first blank with name of first behavior column
  #replace second blank with name of last behavior column
  pivot_longer(cols = ___:___,
               names_to = "behavior",
               values_to = "number_obs") %>% 
  
  #calculate the percentage of animals observed doing a particular behavior
  #replace the blank with the column with the total animals present
  mutate(percent_obs = number_obs/___*100) %>% 
  
  
  #calculate the average percentage of animals observed doing a particular behavior
  #for each observational time period
  #make sure to group by any factors that want to split into
  #replace the first blank with the name of the column with your factor you want to compare
  #replace the second blank with a unique identifier for each observational time period
  group_by(___, ___, behavior) %>% 
  summarize(ave_percent_obs = mean(percent_obs))
                                          
      